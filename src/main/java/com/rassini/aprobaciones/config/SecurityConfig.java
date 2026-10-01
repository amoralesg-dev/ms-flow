package com.rassini.aprobaciones.config;

import com.rassini.aprobaciones.exception.ApiErrorResponse;
import com.rassini.aprobaciones.security.CustomJwtAuthenticationConverter;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.core.DelegatingOAuth2TokenValidator;
import org.springframework.security.oauth2.core.OAuth2Error;
import org.springframework.security.oauth2.core.OAuth2TokenValidator;
import org.springframework.security.oauth2.core.OAuth2TokenValidatorResult;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.security.oauth2.jwt.JwtDecoder;
import org.springframework.security.oauth2.jwt.JwtValidators;
import org.springframework.security.oauth2.jwt.NimbusJwtDecoder;
import org.springframework.security.oauth2.jose.jws.MacAlgorithm;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Configuration
@EnableMethodSecurity
@RequiredArgsConstructor
@EnableConfigurationProperties(AppSecurityProperties.class)
public class SecurityConfig {

    private final AppSecurityProperties securityProperties;
    private final CustomJwtAuthenticationConverter jwtAuthenticationConverter;
    private final ObjectMapper objectMapper;

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
                .csrf(csrf -> csrf.disable())
                .cors(Customizer.withDefaults())
                .sessionManagement(session -> session.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
                .authorizeHttpRequests(auth -> auth
                        .requestMatchers(
                                "/swagger-ui/**",
                                "/swagger-ui.html",
                                "/api-docs/**",
                                "/actuator/health",
                                "/api/index")
                        .permitAll()
                        .requestMatchers(HttpMethod.OPTIONS, "/**").permitAll()
                        .anyRequest().authenticated())
                .oauth2ResourceServer(oauth2 -> oauth2
                        .jwt(jwt -> jwt
                                .decoder(jwtDecoder())
                                .jwtAuthenticationConverter(jwtAuthenticationConverter)))
                .exceptionHandling(handler -> handler
                        .authenticationEntryPoint((request, response, ex) ->
                                writeSecurityError(response, HttpServletResponse.SC_UNAUTHORIZED, "No autenticado", ex.getMessage()))
                        .accessDeniedHandler((request, response, ex) ->
                                writeSecurityError(response, HttpServletResponse.SC_FORBIDDEN, "Acceso denegado", ex.getMessage())));

        return http.build();
    }

    @Bean
    public JwtDecoder jwtDecoder() {
        SecretKey secretKey = new SecretKeySpec(securityProperties.getSecret().getBytes(StandardCharsets.UTF_8), "HmacSHA384");
        NimbusJwtDecoder decoder = NimbusJwtDecoder.withSecretKey(secretKey)
                .macAlgorithm(MacAlgorithm.HS384)
                .build();

        List<OAuth2TokenValidator<Jwt>> validators = new ArrayList<>();
        validators.add(JwtValidators.createDefault());

        if (hasText(securityProperties.getIssuer())) {
            validators.add(jwt -> securityProperties.getIssuer().equals(jwt.getIssuer() != null ? jwt.getIssuer().toString() : null)
                    ? OAuth2TokenValidatorResult.success()
                    : OAuth2TokenValidatorResult.failure(new OAuth2Error("invalid_token", "Issuer inválido", null)));
        }

        if (hasText(securityProperties.getAudience())) {
            validators.add(jwt -> jwt.getAudience().contains(securityProperties.getAudience())
                    ? OAuth2TokenValidatorResult.success()
                    : OAuth2TokenValidatorResult.failure(new OAuth2Error("invalid_token", "Audience inválido", null)));
        }

        decoder.setJwtValidator(new DelegatingOAuth2TokenValidator<>(validators));
        return decoder;
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public CorsConfigurationSource corsConfigurationSource() {
        CorsConfiguration configuration = new CorsConfiguration();
        configuration.setAllowedOriginPatterns(List.of("*"));
        configuration.setAllowedMethods(List.of("GET", "POST", "PUT", "PATCH", "DELETE", "OPTIONS"));
        configuration.setAllowedHeaders(List.of("Authorization", "Content-Type", "X-Requested-With", "Accept"));
        configuration.setExposedHeaders(List.of("Authorization"));
        configuration.setAllowCredentials(false);

        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", configuration);
        return source;
    }

    private boolean hasText(String value) {
        return value != null && !value.isBlank();
    }

    private void writeSecurityError(HttpServletResponse response, int status, String error, String message) throws IOException {
        response.setStatus(status);
        response.setContentType(MediaType.APPLICATION_JSON_VALUE);

        ApiErrorResponse body = ApiErrorResponse.builder()
                .timestamp(LocalDateTime.now())
                .status(status)
                .error(error)
                .message(message)
                .details(List.of())
                .build();

        objectMapper.writeValue(response.getOutputStream(), body);
    }
}

package com.rassini.aprobaciones.security;

import com.rassini.aprobaciones.config.AppSecurityProperties;
import org.springframework.core.convert.converter.Converter;
import org.springframework.security.authentication.AbstractAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationToken;
import org.springframework.stereotype.Component;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Component
public class CustomJwtAuthenticationConverter implements Converter<Jwt, AbstractAuthenticationToken> {

    private final AppSecurityProperties securityProperties;

    public CustomJwtAuthenticationConverter(AppSecurityProperties securityProperties) {
        this.securityProperties = securityProperties;
    }

    @Override
    public AbstractAuthenticationToken convert(Jwt jwt) {
        Set<String> roleValues = new LinkedHashSet<>();
        roleValues.addAll(extractClaimValues(jwt.getClaim("roles")));
        roleValues.addAll(extractClaimValues(jwt.getClaim("authorities")));
        roleValues.addAll(extractScopeValues(jwt.getClaimAsString("scope")));

        if (roleValues.isEmpty()) {
            roleValues.add(securityProperties.getDefaultRole());
        }

        Collection<GrantedAuthority> authorities = roleValues.stream()
                .map(this::normalizeRole)
                .map(SimpleGrantedAuthority::new)
                .collect(Collectors.toCollection(LinkedHashSet::new));

        String principalName = jwt.getSubject() != null ? jwt.getSubject() : "desconocido";
        return new JwtAuthenticationToken(jwt, authorities, principalName);
    }

    private Set<String> extractClaimValues(Object value) {
        if (value == null) {
            return Set.of();
        }

        if (value instanceof String text) {
            return List.of(text.split(",")).stream()
                    .map(String::trim)
                    .filter(s -> !s.isBlank())
                    .collect(Collectors.toCollection(LinkedHashSet::new));
        }

        if (value instanceof Collection<?> collection) {
            return collection.stream()
                    .map(String::valueOf)
                    .map(String::trim)
                    .filter(s -> !s.isBlank())
                    .collect(Collectors.toCollection(LinkedHashSet::new));
        }

        return Set.of();
    }

    private Set<String> extractScopeValues(String scope) {
        if (scope == null || scope.isBlank()) {
            return Set.of();
        }

        return List.of(scope.split("\s+")).stream()
                .map(String::trim)
                .filter(s -> !s.isBlank())
                .collect(Collectors.toCollection(LinkedHashSet::new));
    }

    private String normalizeRole(String role) {
        String cleaned = role.trim();
        if (cleaned.startsWith("ROLE_")) {
            return cleaned;
        }
        return "ROLE_" + cleaned.toUpperCase();
    }
}

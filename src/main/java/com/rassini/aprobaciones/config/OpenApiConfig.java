package com.rassini.aprobaciones.config;

import io.swagger.v3.oas.models.Components;
import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Contact;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.security.SecurityRequirement;
import io.swagger.v3.oas.models.security.SecurityScheme;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class OpenApiConfig {

    @Bean
    public OpenAPI api() {
        String schemeName = "bearerAuth";
        return new OpenAPI()
                .info(new Info()
                        .title("Sistema de Aprobaciones Flowable API")
                        .version("1.0.0")
                        .description("API para gestión de solicitudes, rutas y aprobaciones dinámicas con Flowable")
                        .contact(new Contact().name("Equipo Plataforma").email("plataforma@empresa.com")))
                .addSecurityItem(new SecurityRequirement().addList(schemeName))
                .components(new Components().addSecuritySchemes(schemeName,
                        new SecurityScheme().name(schemeName)
                                .type(SecurityScheme.Type.HTTP)
                                .scheme("bearer")
                                .bearerFormat("JWT")));
    }
}

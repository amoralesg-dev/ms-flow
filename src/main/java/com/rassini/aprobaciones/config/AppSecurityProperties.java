package com.rassini.aprobaciones.config;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;

@Getter
@Setter
@ConfigurationProperties(prefix = "app.security.jwt")
public class AppSecurityProperties {

    private String secret = "default-dev-secret-change-me";
    private String issuer;
    private String audience;
    private String defaultRole = "ROLE_USER";
}

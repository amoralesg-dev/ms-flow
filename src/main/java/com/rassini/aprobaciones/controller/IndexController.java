package com.rassini.aprobaciones.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/api")
public class IndexController {

    @GetMapping("/index")
    public Map<String, Object> index() {
        return Map.of(
                "servicio", "sistema-aprobaciones-flowable",
                "modo", "oauth2-resource-server",
                "estado", "ok"
        );
    }
}

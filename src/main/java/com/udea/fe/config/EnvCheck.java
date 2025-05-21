package com.udea.fe.config;

import jakarta.annotation.PostConstruct;
import org.springframework.stereotype.Component;

@Component
public class EnvCheck {

    @PostConstruct
    public void printEnvVars() {
        System.out.println("🔍 SPRING_DATASOURCE_URL = " + System.getenv("SPRING_DATASOURCE_URL"));
        System.out.println("🔍 SPRING_DATASOURCE_USERNAME = " + System.getenv("SPRING_DATASOURCE_USERNAME"));
        System.out.println("🔍 SPRING_DATASOURCE_PASSWORD = " + System.getenv("SPRING_DATASOURCE_PASSWORD"));
        System.out.println("🔍 JWT_SECRET = " + System.getenv("JWT_SECRET"));
    }
}

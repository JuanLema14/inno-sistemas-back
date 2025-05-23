package com.udea.fe.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AuthResponse {
    private String token;
    private Long id;
    private String name;
    private String email;
    private String dni;
    private String role;
    private String status;
}

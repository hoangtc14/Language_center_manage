package com.example.foreign_language_center_management.model;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
public class TokenPayload {
    private int accountId;
    private String username;
    private String password;
}

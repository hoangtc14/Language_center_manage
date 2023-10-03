package com.example.foreign_language_center_management.dto;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.FieldDefaults;

import java.util.Date;

@Getter
@Setter
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class AccountDTOCreate {
    String username;
    String email;
    String password;
    String image;
    Boolean gender;
    String phone;
    Date dob;
    int role;
    float amount;
}

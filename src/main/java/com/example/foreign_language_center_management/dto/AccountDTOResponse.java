package com.example.foreign_language_center_management.dto;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.FieldDefaults;

import javax.persistence.Column;
import java.util.Date;

@Getter
@Setter
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class AccountDTOResponse {
    int id;
    String username;
    String email;
    String image;
    String password;
    Boolean gender;
    String phone;
    Date dob;
    int role;
    float amount;
}

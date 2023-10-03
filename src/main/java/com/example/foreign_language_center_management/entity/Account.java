package com.example.foreign_language_center_management.entity;

import lombok.*;
import lombok.experimental.FieldDefaults;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "account")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Account {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;
    @Column(unique = true, nullable = false)
    String username;
    @Column(unique = true, nullable = false)
    String email;
    String password;
    String image;
    Boolean gender;
    String phone;
    Date dob;
    int role;
    float amount;
}

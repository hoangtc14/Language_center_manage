package com.example.foreign_language_center_management.controller;

import com.example.foreign_language_center_management.dto.LoginDTORequest;
import com.example.foreign_language_center_management.dto.LoginDTOResponse;
import com.example.foreign_language_center_management.service.AccountService;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.web.bind.annotation.*;

import static com.example.foreign_language_center_management.util.Contant.*;

@RestController
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@RequiredArgsConstructor
@RequestMapping(API_VERSION)
@CrossOrigin
public class AuthenticationController {
    AccountService accountService;

    @PostMapping("/login")
    public LoginDTOResponse login(@RequestBody LoginDTORequest loginDTORequest) {
        return accountService.login(loginDTORequest);
    }
}

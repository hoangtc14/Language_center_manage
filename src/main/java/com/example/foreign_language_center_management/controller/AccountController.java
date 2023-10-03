package com.example.foreign_language_center_management.controller;

import com.example.foreign_language_center_management.dto.AccountDTOCreate;
import com.example.foreign_language_center_management.dto.AccountDTOResponse;
import com.example.foreign_language_center_management.service.AccountService;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.web.bind.annotation.*;

import static com.example.foreign_language_center_management.util.Contant.*;

@RestController
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@RequestMapping(API_VERSION + "/accounts")
@CrossOrigin
public class AccountController {
    AccountService accountService;

    @PostMapping
    public AccountDTOResponse createAccount(@RequestBody AccountDTOCreate accountDTOCreate) {
        return accountService.createAccount(accountDTOCreate);
    }
}

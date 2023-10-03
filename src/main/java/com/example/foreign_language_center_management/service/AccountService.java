package com.example.foreign_language_center_management.service;

import com.example.foreign_language_center_management.dto.AccountDTOCreate;
import com.example.foreign_language_center_management.dto.AccountDTOResponse;
import com.example.foreign_language_center_management.dto.LoginDTORequest;
import com.example.foreign_language_center_management.dto.LoginDTOResponse;

public interface AccountService {
    AccountDTOResponse createAccount(AccountDTOCreate accountDTOCreate);

    LoginDTOResponse login(LoginDTORequest loginDTORequest);
}

package com.example.foreign_language_center_management.mapper;

import com.example.foreign_language_center_management.entity.Account;
import com.example.foreign_language_center_management.model.TokenPayload;
import com.example.foreign_language_center_management.dto.AccountDTOCreate;
import com.example.foreign_language_center_management.dto.AccountDTOResponse;
public class AccountMapper {
    public static Account toAccount(AccountDTOCreate accountDTOCreate) {
        return Account.builder()
                .username(accountDTOCreate.getUsername())
                .email(accountDTOCreate.getEmail())
                .password(accountDTOCreate.getPassword())
                .image(accountDTOCreate.getImage())
                .gender(accountDTOCreate.getGender())
                .phone(accountDTOCreate.getPhone())
                .dob(accountDTOCreate.getDob())
                .amount(accountDTOCreate.getAmount())
                .role(accountDTOCreate.getRole())
                .build();
    }

    public static AccountDTOResponse toAccountDTOResponse(Account account) {
        return AccountDTOResponse.builder()
                .id(account.getId())
                .username(account.getUsername())
                .email(account.getEmail())
                .image(account.getImage())
                .gender(account.getGender())
                .phone(account.getPhone())
                .dob(account.getDob())
                .amount(account.getAmount())
                .role(account.getRole())
                .build();
    }

    public static TokenPayload toTokenPayload(Account account) {
        return TokenPayload.builder()
                .accountId(account.getId())
                .username(account.getUsername())
                .build();
    }
}

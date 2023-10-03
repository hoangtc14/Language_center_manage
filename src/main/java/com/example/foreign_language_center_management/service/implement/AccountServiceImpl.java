package com.example.foreign_language_center_management.service.implement;

import com.example.foreign_language_center_management.dto.AccountDTOCreate;
import com.example.foreign_language_center_management.dto.AccountDTOResponse;
import com.example.foreign_language_center_management.dto.LoginDTORequest;
import com.example.foreign_language_center_management.dto.LoginDTOResponse;
import com.example.foreign_language_center_management.entity.Account;
import com.example.foreign_language_center_management.exception.FLCMException;
import com.example.foreign_language_center_management.mapper.AccountMapper;
import com.example.foreign_language_center_management.repository.AccountRepository;
import com.example.foreign_language_center_management.service.AccountService;
import com.example.foreign_language_center_management.util.JwtTokenUtil;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class AccountServiceImpl implements AccountService {
    AccountRepository accountRepository;
    PasswordEncoder passwordEncoder;
    JwtTokenUtil jwtTokenUtil;
    @Override
    public AccountDTOResponse createAccount(AccountDTOCreate accountDTOCreate) {
        if (accountDTOCreate.getUsername() == null) {
            throw FLCMException.badRequestException("Username is not null");
        }
        if(accountDTOCreate.getEmail() == null){
            throw FLCMException.badRequestException("Email is not null");
        }
        if(accountRepository.existsByUsername(accountDTOCreate.getUsername())){
            throw FLCMException.badRequestException("Username is existed");
        }
        if(accountRepository.existsByEmail(accountDTOCreate.getEmail())){
            throw FLCMException.badRequestException("Email is existed");
        }
        accountDTOCreate.setPassword(passwordEncoder.encode(accountDTOCreate.getPassword()));
        Account account = accountRepository.save(AccountMapper.toAccount(accountDTOCreate));
        return AccountMapper.toAccountDTOResponse(account);
    }

    @Override
    public LoginDTOResponse login(LoginDTORequest loginDTORequest) {
        Optional<Account> accountOptional = accountRepository.findByUsername(loginDTORequest.getUsername());
        boolean isAuthentication = false;
        if (accountOptional.isPresent()) {
            Account account = accountOptional.get();
            if (passwordEncoder.matches(loginDTORequest.getPassword(), account.getPassword())) {
                isAuthentication = true;
            }
        }
        if (!isAuthentication) {
            throw FLCMException.badRequestException("Username or password incorrect");
        }

        Account account = accountOptional.get();
        final int ONE_DAY_MILLISECONDS = 24 * 60 * 60;
        String accessToken = jwtTokenUtil.generateToken(AccountMapper.toTokenPayload(account), ONE_DAY_MILLISECONDS);
        return LoginDTOResponse.builder()
                .account(AccountMapper.toAccountDTOResponse(account))
                .accessToken(accessToken)
                .build();
//        return LoginDTOResponse.builder()
//                .account(AccountMapper.toAccountDTOResponse(account))
//                .build();
    }
}

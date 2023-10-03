package com.example.foreign_language_center_management.exception;

import com.example.foreign_language_center_management.model.Error;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.FieldDefaults;
import org.springframework.http.HttpStatus;

@Getter
@Setter
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class FLCMException extends RuntimeException{
    HttpStatus status;
    Error error;

    public static FLCMException notFoundException(String message) {
        return FLCMException.builder().status(HttpStatus.NOT_FOUND)
                .error(Error.builder()
                        .code("404")
                        .message(message)
                        .build())
                .build();
    }

    public static FLCMException badRequestException(String message) {
        return FLCMException.builder().status(HttpStatus.BAD_REQUEST)
                .error(Error.builder()
                        .code("400")
                        .message(message)
                        .build())
                .build();
    }
}

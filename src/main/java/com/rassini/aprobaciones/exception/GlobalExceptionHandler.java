package com.rassini.aprobaciones.exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.time.LocalDateTime;
import java.util.List;

@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(ResourceNotFoundException.class)
    public ResponseEntity<ApiErrorResponse> handleNotFound(ResourceNotFoundException ex) {
        return build(HttpStatus.NOT_FOUND, ex.getMessage(), List.of());
    }

    @ExceptionHandler(BusinessException.class)
    public ResponseEntity<ApiErrorResponse> handleBusiness(BusinessException ex) {
        return build(HttpStatus.BAD_REQUEST, ex.getMessage(), List.of());
    }

    @ExceptionHandler(UnauthorizedException.class)
    public ResponseEntity<ApiErrorResponse> handleUnauthorized(UnauthorizedException ex) {
        return build(HttpStatus.UNAUTHORIZED, ex.getMessage(), List.of());
    }

    @ExceptionHandler(org.springframework.security.access.AccessDeniedException.class)
    public ResponseEntity<ApiErrorResponse> handleAccessDenied(org.springframework.security.access.AccessDeniedException ex) {
        return build(HttpStatus.FORBIDDEN, "Acceso denegado", List.of());
    }

    @ExceptionHandler(org.springframework.security.core.AuthenticationException.class)
    public ResponseEntity<ApiErrorResponse> handleAuthentication(org.springframework.security.core.AuthenticationException ex) {
        return build(HttpStatus.UNAUTHORIZED, "No autenticado", List.of());
    }

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseEntity<ApiErrorResponse> handleValidation(MethodArgumentNotValidException ex) {
        List<String> details = ex.getBindingResult().getFieldErrors().stream()
                .map(FieldError::getDefaultMessage)
                .toList();
        return build(HttpStatus.BAD_REQUEST, "Error de validación", details);
    }

    @ExceptionHandler(Exception.class)
    public ResponseEntity<ApiErrorResponse> handleGeneric(Exception ex) {
        return build(HttpStatus.INTERNAL_SERVER_ERROR, ex.getMessage(), List.of());
    }

    private ResponseEntity<ApiErrorResponse> build(HttpStatus status, String message, List<String> details) {
        return ResponseEntity.status(status).body(ApiErrorResponse.builder()
                .timestamp(LocalDateTime.now())
                .status(status.value())
                .error(status.getReasonPhrase())
                .message(message)
                .details(details)
                .build());
    }
}

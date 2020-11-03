package com.wwj.order.exception;

/**
 * 邮件发送失败异常
 */
public class RegisterGeneralSecurityException extends RuntimeException{

    public RegisterGeneralSecurityException() {
    }

    public RegisterGeneralSecurityException(String message) {
        super(message);
    }

    public RegisterGeneralSecurityException(String message, Throwable cause) {
        super(message, cause);
    }

    public RegisterGeneralSecurityException(Throwable cause) {
        super(cause);
    }

    public RegisterGeneralSecurityException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}

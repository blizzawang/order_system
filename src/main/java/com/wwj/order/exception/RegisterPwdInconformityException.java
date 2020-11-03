package com.wwj.order.exception;

/**
 * 注册时两次密码不一致抛出此异常
 */
public class RegisterPwdInconformityException extends RuntimeException{

    public RegisterPwdInconformityException() {
    }

    public RegisterPwdInconformityException(String message) {
        super(message);
    }

    public RegisterPwdInconformityException(String message, Throwable cause) {
        super(message, cause);
    }

    public RegisterPwdInconformityException(Throwable cause) {
        super(cause);
    }

    public RegisterPwdInconformityException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}

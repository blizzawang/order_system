package com.wwj.order.exception;

/**
 * 解锁屏幕失败抛出此异常
 */
public class UnLockFailedException extends RuntimeException{

    public UnLockFailedException() {
    }

    public UnLockFailedException(String message) {
        super(message);
    }

    public UnLockFailedException(String message, Throwable cause) {
        super(message, cause);
    }

    public UnLockFailedException(Throwable cause) {
        super(cause);
    }

    public UnLockFailedException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}

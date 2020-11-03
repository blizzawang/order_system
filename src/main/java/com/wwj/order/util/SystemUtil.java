package com.wwj.order.util;

import javax.servlet.http.HttpServletRequest;
import java.sql.Time;
import java.util.Timer;
import java.util.TimerTask;

/**
 * 系统工具类
 */
public class SystemUtil {

    /**
     * 判断当前请求是否为AJAX请求
     *
     * @param request
     * @return true:当前请求是AJAX请求
     * false:当前请求不是AJAX请求
     */
    public static boolean judgeRequestType(HttpServletRequest request) {
        //获取请求消息头
        String accept = request.getHeader("Accept");
        String xRequestedWith = request.getHeader("X-Requested-With");

        return (accept != null && accept.contains("application/json")) || (xRequestedWith != null && xRequestedWith.contains("XMLHttpRequest"));
    }
}

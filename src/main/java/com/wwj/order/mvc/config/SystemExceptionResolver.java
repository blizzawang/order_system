package com.wwj.order.mvc.config;

import com.google.gson.Gson;
import com.wwj.order.exception.*;
import com.wwj.order.util.ResultEntity;
import com.wwj.order.util.SystemConstant;
import com.wwj.order.util.SystemUtil;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 定义全局异常映射，捕获系统异常
 */
@ControllerAdvice           //声明该类为异常处理类
public class SystemExceptionResolver {

    /**
     * 处理注册时两次输入密码不一致的异常
     * @param exception
     * @param request
     * @param response
     * @return
     * @throws IOException
     */
    @ExceptionHandler(value = UnLockFailedException.class)
    public ModelAndView resolverUnLockFailedException(UnLockFailedException exception, HttpServletRequest request, HttpServletResponse response) throws IOException {
        //当解锁屏幕失败时，让用户重新回到屏幕锁定的页面
        String viewName = "pages-lock-screen";
        return commonResolver(viewName,exception,request,response);
    }

    /**
     * 处理注册时两次输入密码不一致的异常
     * @param exception
     * @param request
     * @param response
     * @return
     * @throws IOException
     */
    @ExceptionHandler(value = RegisterPwdInconformityException.class)
    public ModelAndView resolverRegisterPwdInconformityException(RegisterPwdInconformityException exception, HttpServletRequest request, HttpServletResponse response) throws IOException {
        //当两次密码输入不一致时，让用户重新回到注册页面
        String viewName = "pages-signup";
        return commonResolver(viewName,exception,request,response);
    }

    /**
     * 处理注册的激活邮件发送失败的异常
     * @param exception
     * @param request
     * @param response
     * @return
     * @throws IOException
     */
    @ExceptionHandler(value = RegisterGeneralSecurityException.class)
    public ModelAndView resolverRegisterGeneralSecurityException(RegisterGeneralSecurityException exception, HttpServletRequest request, HttpServletResponse response) throws IOException {
        //当抛出邮件发送失败异常时，让用户重新回到注册页面
        String viewName = "pages-signup";
        return commonResolver(viewName,exception,request,response);
    }

    /**
     * 处理用户名重复异常
     * @param exception
     * @param request
     * @param response
     * @return
     * @throws IOException
     */
    @ExceptionHandler(value = LoginAcctAlreadyInUseException.class)
    public ModelAndView resolverLoginAcctAlreadyInUseException(LoginAcctAlreadyInUseException exception, HttpServletRequest request, HttpServletResponse response) throws IOException {
        //当抛出用户名重复异常时，让用户重新回到注册页面
        String viewName = "pages-signup";
        return commonResolver(viewName,exception,request,response);
    }

    /**
     * 处理登录异常
     * @param exception
     * @param request
     * @param response
     * @return
     * @throws IOException
     */
    @ExceptionHandler(value = LoginFailedException.class)
    public ModelAndView resolverLoginFailedException(LoginFailedException exception, HttpServletRequest request, HttpServletResponse response) throws IOException {
        //当抛出登录异常时，让用户重新回到登录页面
        String viewName = "pages-siginin";
        return commonResolver(viewName,exception,request,response);
    }

    /**
     * 异常映射模板方法
     * @param viewName
     * @return
     */
    private ModelAndView commonResolver(String viewName, Exception exception, HttpServletRequest request, HttpServletResponse response) throws IOException {
        //判断请求类型
        boolean judgeResult = SystemUtil.judgeRequestType(request);
        if(judgeResult){
            //如果是AJAX请求，则创建ResultEntity对象
            ResultEntity<Object> resultEntity = ResultEntity.failed(exception.getMessage());
            //创建Gson对象
            Gson gson = new Gson();
            //将resultEntity对象转换为json字符串
            String json = gson.toJson(resultEntity);
            //将json字符串作为响应体返回给浏览器
            response.getWriter().write(json);

            return null;    //由于已经返回了数据，所以此处返回null即可
        }
        //如果是普通请求
        ModelAndView modelAndView = new ModelAndView();
        //封装异常信息
        modelAndView.addObject(SystemConstant.ATTR_NAME_EXCEPTION,exception);
        //设置视图
        modelAndView.setViewName(viewName);
        return modelAndView;
    }


}

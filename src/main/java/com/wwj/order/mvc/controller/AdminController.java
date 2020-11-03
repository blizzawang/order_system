package com.wwj.order.mvc.controller;

import com.wwj.order.bean.Admin;
import com.wwj.order.service.AdminService;
import com.wwj.order.util.EncryptionUtil;
import com.wwj.order.util.SendEmail;
import com.wwj.order.util.SystemConstant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

/**
 * 登录注册控制器
 */
@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    /**
     * 标识用户是否激活了邮件
     */
    private static boolean email_flag = false;

    /**
     * 计数器
     */
    private int count = 0;


    /**
     * 完成登录功能
     * @return
     */
    @RequestMapping("/admin/do/login")
    public String doLogin(
            @RequestParam("username") String username,
            @RequestParam("password") String password,
            HttpSession session
    ){
        //该方法会对登录操作进行校验，若失败则抛出异常，若成功则返回Admin对象
        Admin admin = adminService.getAdminByLoginAcct(username, password);
        //将admin存入session
        session.setAttribute(SystemConstant.ATTR_NAME_LOGIN_ADMIN,admin);

        //当从登录页面转发到后台主页面后，再去刷新后台主页面会导致表单重复提交
        //加上登录页面并没有数据需要传递给后台，所以这里应该采用重定向的方式跳转至后台
        //然而重定向是由浏览器进行操作的，浏览器却无法读取到WEB-INF下的页面
        //所以还需要SpringMVC为我们做一次转发
        return "redirect:/admin/to/index/page";
    }

    /**
     * 完成注册功能
     * @param admin
     * @param pwd_confirm
     * @return
     */
    @RequestMapping("/admin/do/register")
    public String doRegister(Admin admin,@RequestParam("pwd_confirm") String pwd_confirm){
        adminService.doRegister(admin,pwd_confirm);
        return "redirect:/admin/to/login/page";
    }

    /**
     * 完成忘记密码功能
     * @return
     */
    @RequestMapping("/admin/do/forget/password")
    public String doForgetPassword(@RequestParam("email") String email){
        if(email == null || "".equals(email)){
            throw new RuntimeException(SystemConstant.MESSAGE_STRING_INVALIDATE);
        }
        //向该邮件地址发送一封邮件
        SendEmail.send(email);

        //TODO 邮件中有url地址，通过它可以重新设置密码。功能待后续完善。。。

        return "";
    }

    /**
     * 完成注销功能
     * @param session
     * @return
     */
    @RequestMapping("/admin/do/logout")
    public String doLogout(HttpSession session){
        //删除session中的用户信息
        session.invalidate();
        return "redirect:/admin/to/login/page";
    }

    @RequestMapping("/index/do/unlock")
    public String doUnLock(@RequestParam("password") String password,HttpSession session){
        //从session域中取出用户信息
        Admin admin = (Admin) session.getAttribute(SystemConstant.ATTR_NAME_LOGIN_ADMIN);
        String username = admin.getUsername();
        //校验密码
        adminService.checkLock(username,password);
        //若校验成功，则解锁屏幕，跳转回主界面即可
        return "redirect:/admin/to/index/page";
    }

    /**
     * 完成注册校验，注册后需要验证邮箱进行激活
     * @param admin
     * @return
     *//*
    @RequestMapping("/admin/do/register")
    public String doRegisterToEmail(Admin admin,@RequestParam("pwd_confirm") String pwd_confirm){
        //校验注册信息的合法性，若不合法则抛出异常
        adminService.checkRegister(admin,pwd_confirm);
        //若信息均合法，则向用户邮箱发送一条激活邮件
        SendEmail.send(admin.getEmail(),admin);
        return "redirect:/admin/to/login/page";
    }

    *//**
     * 用户点击注册后并不会直接进行注册，而是要等待用户点击激活链接，并验证成功后才完成注册
     * 而当用户点击邮箱中的激活链接时会调用此方法
     * @param date
     * @return
     *//*
    @ResponseBody
    @RequestMapping("/user/verifyEmailByUrl/email/token/{date}/{username}/{password}/{email}")
    public String doRegisterToSuccess(
            @PathVariable("date") String date,
            @PathVariable("username") String username,
            @PathVariable("password") String password,
            @PathVariable("email") String email
    ){
        //从激活地址中取出时间和username，并进行解码
        date = EncryptionUtil.base64_decoder(date);
        username = EncryptionUtil.base64_decoder(username);
        //使用当前时间与邮件发送的时间比较，若超时则提示用户邮件失效
        long startTime = 0;
        try {
            Date parseDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(date);
            startTime = parseDate.getTime();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        long nowTime = new Date().getTime();
        //若超过5分钟，则邮件失效
        if(nowTime - startTime >= 5 *60 * 1000){
            return "邮件已失效!";
        }else{
            //激活成功，允许注册
            Admin admin = new Admin(null, username, password, email, new Date());
            adminService.regist(admin);
            return "激活成功!";
        }
    }*/
}

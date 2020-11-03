package com.wwj.order.util;

import com.sun.mail.util.MailSSLSocketFactory;
import com.wwj.order.bean.Admin;
import com.wwj.order.exception.RegisterGeneralSecurityException;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.security.GeneralSecurityException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

/**
 * 邮件工具类
 */
public class SendEmail {

    //邮箱地址
    private static String userName = "1169323729@qq.com";
    //邮件授权码
    private static String password = "wxbvppmhgnvwhfbf";

    //注册校验地址，用户通过点击该链接发送请求进行校验
    private static String ip = "192.168.137.1";
    private static String port = "8080";
    private static String url = "http://" + ip + ":" + port + "/order_system_war/admin/email/forget/password";

    /**
     * 发送邮件
     *
     * @param recipient 收件人
     */
    public static void send(String recipient) {
        try {
            Properties properties = new Properties();
            //设置QQ邮件服务器
            properties.setProperty("mail.host", "smtp.qq.com");
            //邮件发送协议
            properties.setProperty("mail.transport.protocol", "smtp");
            //需要验证用户名密码
            properties.setProperty("mail.smtp.auth", "true");
            //关于QQ邮箱，还要设置SSL加密，加上以下代码即可
            MailSSLSocketFactory sf = null;
            sf = new MailSSLSocketFactory();
            sf.setTrustAllHosts(true);
            properties.put("mail.smtp.ssl.enable", "true");
            properties.put("mail.smtp.ssl.socketFactory", sf);

            //创建Session对象
            Session session = Session.getDefaultInstance(properties, new Authenticator() {

                @Override
                protected PasswordAuthentication getPasswordAuthentication() {

                    return new PasswordAuthentication(userName, password);
                }
            });

            //开启Session的debug模式，这样就可以查看到程序发送Email的运行状态
            session.setDebug(true);
            //获取Transport对象
            Transport transport = session.getTransport();
            //连接邮箱服务器
            transport.connect("smtp.qq.com", userName, password);

            //创建邮件对象
            MimeMessage mimeMessage = new MimeMessage(session);
            //指定发件人，通过自己的邮箱向注册用户发送激活邮件
            mimeMessage.setFrom(new InternetAddress(userName));
            //指定收件人
            mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
            //设置邮件内容
            mimeMessage.setContent("请点击下面的链接重新设置您的密码\n" + url, "text/html;charset=UTF-8");
            //发送邮件
            transport.sendMessage(mimeMessage, mimeMessage.getAllRecipients());
            transport.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

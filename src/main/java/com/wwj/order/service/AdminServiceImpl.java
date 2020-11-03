package com.wwj.order.service;

import com.wwj.order.bean.Admin;
import com.wwj.order.bean.AdminExample;
import com.wwj.order.dao.AdminMapper;
import com.wwj.order.exception.LoginAcctAlreadyInUseException;
import com.wwj.order.exception.LoginFailedException;
import com.wwj.order.exception.RegisterPwdInconformityException;
import com.wwj.order.exception.UnLockFailedException;
import com.wwj.order.util.EncryptionUtil;
import com.wwj.order.util.SendEmail;
import com.wwj.order.util.SystemConstant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Objects;

/**
 * 登录注册服务类
 */
@Service
public class AdminServiceImpl implements AdminService{

    @Autowired
    private AdminMapper adminMapper;

    /**
     * 登录校验
     * @return
     */
    @Override
    public Admin getAdminByLoginAcct(String username, String password) {
        //查询用户表
        AdminExample adminExample = new AdminExample();
        AdminExample.Criteria criteria = adminExample.createCriteria();
        criteria.andUsernameEqualTo(username);
        List<Admin> adminList = adminMapper.selectByExample(adminExample);
        //判断根据用户名查询得到的结果是否有效
        if(adminList == null || adminList.size() == 0){
            throw new LoginFailedException(SystemConstant.MESSAGE_LOGIN_FAILED);
        }
        Admin admin = adminList.get(0);
        //再次校验Admin
        if(admin == null){
            throw new LoginFailedException(SystemConstant.MESSAGE_LOGIN_FAILED);
        }
        //将表单传递过来的密码进行加密
        String form_password = EncryptionUtil.md5(password);
        //取出数据表存放的密码
        String db_passowrd = admin.getPassword();
        //比较密码
        if(!Objects.equals(form_password,db_passowrd)){
            throw new LoginFailedException(SystemConstant.MESSAGE_LOGIN_FAILED);
        }
        //校验通过，返回Admin对象
        return admin;
    }

    /**
     * 完成注册功能
     * @param admin
     */
    @Override
    public void doRegister(Admin admin,String pwd_confirm) {
        String username = admin.getUsername();
        String password = admin.getPassword();
        if(username == null || password == null){
            throw new RuntimeException(SystemConstant.MESSAGE_STRING_INVALIDATE);
        }
        //检查当前用户名是否已经被注册
        AdminExample adminExample = new AdminExample();
        AdminExample.Criteria criteria = adminExample.createCriteria();
        criteria.andUsernameEqualTo(username);
        List<Admin> adminList = adminMapper.selectByExample(adminExample);
        if(adminList != null){
            if(adminList.size() > 0){
                //查询到了数据，说明该用户名已经存在
                throw new LoginAcctAlreadyInUseException(SystemConstant.MESSAGE_LOGIN_ACCT_ALREADY_IN_USE);
            }
        }
        //校验两次输入的密码是否一致
        if(!password.equals(pwd_confirm)){
            //抛出异常
            throw new RegisterPwdInconformityException(SystemConstant.MESSAGE_REGISTER_PWD_INCONFORMITY);
        }

        //对密码进行加密
        admin.setPassword(EncryptionUtil.md5(password));
        //插入数据
        adminMapper.insert(admin);
    }

    /**
     * 锁定屏幕功能，校验密码
     * @param username
     * @param password
     */
    @Override
    public void checkLock(String username, String password) {
        //通过用户名查询密码
        AdminExample adminExample = new AdminExample();
        AdminExample.Criteria criteria = adminExample.createCriteria();
        criteria.andUsernameEqualTo(username);
        List<Admin> adminList = adminMapper.selectByExample(adminExample);
        if(adminList == null || adminList.size() == 0){
            throw new RuntimeException("系统错误");
        }
        String db_password = adminList.get(0).getPassword();
        //对用户提交的密码进行加密
        password = EncryptionUtil.md5(password);
        //比较密码
        if(!Objects.equals(db_password,password)){
            //抛出密码不一致异常
            throw new UnLockFailedException("密码错误，请重新输入");
        }
    }
}
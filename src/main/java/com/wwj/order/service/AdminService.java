package com.wwj.order.service;

import com.wwj.order.bean.Admin;

public interface AdminService {

    Admin getAdminByLoginAcct(String username, String password);

    void doRegister(Admin admin,String pwd_confirm);

    void checkLock(String username, String password);
}
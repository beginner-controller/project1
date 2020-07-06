package com.service;

import com.dao.UserDao;
import com.model.User;

public class UserService {
    /**
     * 登录信息
     * @param user
     * @return
     */
    public boolean login(User user){
        UserDao userDao = new UserDao();
        boolean bool = userDao.login(user);
        return bool;
    }

    /**
     * 判断注册用户名是否存在
     * @param user
     * @return
     */
    public boolean register(User user) {
        boolean register = false;
        UserDao userDao = new UserDao();
        boolean bool = userDao.checkUser(user);
        //2.存在就返回用户名已存在，不存在就添加到数据库
        if (bool) {
            register = userDao.register(user);
        }
        return register;
    }
}

package com.springapp.mvc.Service.Impl;

import com.springapp.mvc.DAO.UserDao;
import com.springapp.mvc.Model.UserClient;
import com.springapp.mvc.Service.UserClientService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by hujiaxuan on 2016/4/1.
 */
@Service
public class UserServiceImpl implements UserClientService {
    @Resource
    public UserDao userDao;
    @Override
    public UserClient selectUserById(String user_id) {

        return userDao.selectUserClientById(user_id);
    }

    @Override
    public UserClient selectUserByAccount(String user_account) {
        return userDao.selectUserClientByAccount(user_account);
    }

    @Override
    public boolean userClientLoginCheck(String user_account, String user_password) {

        return false;
    }

    @Override
    public String selectUserIdByAccount(String user_account) {

        return null;
    }
}

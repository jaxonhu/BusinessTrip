package com.springapp.mvc.Service.Impl;

import com.springapp.mvc.DAO.UserDao;
import com.springapp.mvc.DAO.WeiboDao;
import com.springapp.mvc.Model.Profile;
import com.springapp.mvc.Model.UserClient;
import com.springapp.mvc.Service.UserClientService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by hujiaxuan on 2016/4/1.
 */
@Service
public class UserServiceImpl implements UserClientService {
    @Resource
    public UserDao userDao;
    @Resource
    public WeiboDao weiboDao;
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

    @Override
    public List<UserClient> selectManager(String department) {
        return userDao.selectManager(department);
    }

    @Override
    public List<UserClient> selectEmployee(String department) {
        return userDao.selectEmployee(department);
    }

    @Override
    public boolean userFaceUrlUpload(String user_id, String url,String user_account) {

        int res1 = userDao.updateUserFaceUrl(user_id,url);
        int res2 = weiboDao.updateWeiboFaceUrl(user_account,url);
        int res3 = weiboDao.updateCommentFaceUrl(user_account,url);

        return true;
    }

    @Override
    public int saveUserProfile(String user_account, String description, String phone) {

        int res = userDao.updateUserProfile(user_account,description,phone);

        return res;
    }

    @Override
    public Profile getUserProfile(String user_account) {

        return userDao.getUserProfile(user_account);
    }

    @Override
    public int updateUserPassword(String password_new, String user_id) {
        return userDao.updateUserPassword(user_id,password_new);
    }
}

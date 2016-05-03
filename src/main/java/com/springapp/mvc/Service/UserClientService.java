package com.springapp.mvc.Service;

import com.springapp.mvc.Model.Profile;
import com.springapp.mvc.Model.UserClient;

import java.util.List;

/**
 * Created by hujiaxuan on 2016/4/1.
 */
public interface UserClientService {
    public UserClient selectUserById(String user_id);
    public UserClient selectUserByAccount(String user_account);
    public boolean userClientLoginCheck(String user_account,String user_password);
    public String selectUserIdByAccount(String user_account);
    public List<UserClient> selectManager(String department);
    public List<UserClient> selectEmployee(String department);
    public boolean userFaceUrlUpload(String user_id,String url,String user_account);
    public int saveUserProfile(String user_account,String description,String phone);
    public Profile getUserProfile(String user_account);
    public int updateUserPassword(String password_new,String user_id);
}

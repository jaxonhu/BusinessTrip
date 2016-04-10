package com.springapp.mvc.Service;

import com.springapp.mvc.Model.UserClient;

/**
 * Created by hujiaxuan on 2016/4/1.
 */
public interface UserClientService {
    public UserClient selectUserById(String user_id);
    public UserClient selectUserByAccount(String user_account);
    public boolean userClientLoginCheck(String user_account,String user_password);
    public String selectUserIdByAccount(String user_account);
}

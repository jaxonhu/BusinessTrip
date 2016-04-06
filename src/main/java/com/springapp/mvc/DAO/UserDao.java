package com.springapp.mvc.DAO;

import com.springapp.mvc.Model.UserClient;
import org.springframework.stereotype.Repository;

/**
 * Created by hujiaxuan on 2016/3/31.
 */
@Repository
public interface UserDao{
    public UserClient login(UserClient userClient);
    public UserClient selectUserClientById(String user_id);
    public UserClient selectUserClientByAccount(String user_account);
}

package com.springapp.mvc.DAO;

import com.springapp.mvc.Model.UserClient;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by hujiaxuan on 2016/3/31.
 */
@Repository
public interface UserDao{
    public UserClient login(UserClient userClient);
    public UserClient selectUserClientById(String user_id);
    public UserClient selectUserClientByAccount(String user_account);
    public String selectUserClientIdByAccount(String user_account);
    public List<UserClient> selectManager(String department);
    public List<UserClient> selectEmployee(String department);
}

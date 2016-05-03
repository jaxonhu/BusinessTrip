package com.springapp.mvc.DAO;

import com.springapp.mvc.Model.Profile;
import com.springapp.mvc.Model.UserClient;
import org.apache.ibatis.annotations.Param;
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
    public int updateUserFaceUrl(@Param(value = "user_id")String user_id,@Param(value = "user_face_url")String user_face_url);
    public int updateUserProfile(@Param(value = "user_account")String user_account,@Param(value = "description")String description,@Param(value = "phone")String phone);
    public Profile getUserProfile(String user_account);
    public int updateUserPassword(@Param(value = "user_id")String user_id,@Param(value = "password_new")String password_new);
}

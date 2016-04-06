package com.springapp.mvc.Model;

/**
 * Created by hujiaxuan on 2016/3/31.
 */
public class UserClient {
    private String user_id;
    private String user_account;
    private String user_password;
    private String user_email;

    public String getUser_id() {
        return user_id;
    }

    public String getUser_account() {
        return user_account;
    }

    public String getUser_password() {
        return user_password;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public void setUser_account(String user_account) {
        this.user_account = user_account;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    @Override
    public String toString() {
        return "UserClient{" +
                "user_email='" + user_email + '\'' +
                ", user_id='" + user_id + '\'' +
                ", user_password='" + user_password + '\'' +
                ", user_account='" + user_account + '\'' +
                '}';
    }
}

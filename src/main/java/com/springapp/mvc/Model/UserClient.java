package com.springapp.mvc.Model;

/**
 * Created by hujiaxuan on 2016/3/31.
 */
public class UserClient {
    public String user_id;
    public String user_account;
    public String user_password;
    public String user_email;
    public String user_department;
    public String user_role;
    public int user_score;

    public String getUser_department() {
        return user_department;
    }

    public void setUser_department(String user_department) {
        this.user_department = user_department;
    }

    public String getUser_role() {
        return user_role;
    }

    public void setUser_role(String user_role) {
        this.user_role = user_role;
    }

    public int getUser_score() {
        return user_score;
    }

    public void setUser_score(int user_score) {
        this.user_score = user_score;
    }

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

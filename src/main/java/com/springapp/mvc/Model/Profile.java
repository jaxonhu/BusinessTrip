package com.springapp.mvc.Model;

/**
 * Created by hujiaxuan on 2016/5/3.
 */
public class Profile {
    public String user_account;
    public String description;
    public String phone;



    public String getUser_account() {
        return user_account;
    }

    public void setUser_account(String user_account) {
        this.user_account = user_account;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}

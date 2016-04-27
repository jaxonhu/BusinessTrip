package com.springapp.mvc.Model;

import java.sql.Date;

/**
 * Created by hujiaxuan on 2016/4/25.
 */
public class Weibo {
    public String weibo_id;
    public String weibo_content;
    public Date weibo_date;
    public Integer thumb_on;
    public String user_department;
    public String user_face_url;
    public String user_account;

    public Weibo(String weibo_id, String weibo_content,String user_account ,Date weibo_date, Integer thumb_on, String user_department, String user_face_url) {
        this.weibo_id = weibo_id;
        this.weibo_content = weibo_content;
        this.weibo_date = weibo_date;
        this.thumb_on = thumb_on;
        this.user_department = user_department;
        this.user_face_url = user_face_url;
        this.user_account = user_account;
    }

    public String getWeibo_id() {
        return weibo_id;
    }

    public void setWeibo_id(String weibo_id) {
        this.weibo_id = weibo_id;
    }

    public String getWeibo_content() {
        return weibo_content;
    }

    public void setWeibo_content(String weibo_content) {
        this.weibo_content = weibo_content;
    }

    public Date getWeibo_date() {
        return weibo_date;
    }

    public void setWeibo_date(Date weibo_date) {
        this.weibo_date = weibo_date;
    }

    public Integer getThumb_on() {
        return thumb_on;
    }

    public void setThumb_on(Integer thumb_on) {
        this.thumb_on = thumb_on;
    }

    public String getUser_department() {
        return user_department;
    }

    public void setUser_department(String user_department) {
        this.user_department = user_department;
    }

    public String getUser_face_url() {
        return user_face_url;
    }

    public void setUser_face_url(String user_face_url) {
        this.user_face_url = user_face_url;
    }

    public String getUser_account() {
        return user_account;
    }

    public void setUser_account(String user_account) {
        this.user_account = user_account;
    }
}

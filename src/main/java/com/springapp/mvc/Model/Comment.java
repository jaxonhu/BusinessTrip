package com.springapp.mvc.Model;

import java.sql.Date;

/**
 * Created by hujiaxuan on 2016/4/26.
 */
public class Comment {
    public String comment_id;
    public String weibo_id;
    public String comment;
    public String user_account;
    public Date comment_date;
    public String user_face_url;

    public String getComment_id() {
        return comment_id;
    }

    public void setComment_id(String comment_id) {
        this.comment_id = comment_id;
    }

    public String getWeibo_id() {
        return weibo_id;
    }

    public void setWeibo_id(String weibo_id) {
        this.weibo_id = weibo_id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getUser_account() {
        return user_account;
    }

    public void setUser_account(String user_account) {
        this.user_account = user_account;
    }

    public Date getComment_date() {
        return comment_date;
    }

    public void setComment_date(Date comment_date) {
        this.comment_date = comment_date;
    }

    public String getUser_face_url() {
        return user_face_url;
    }

    public void setUser_face_url(String user_face_url) {
        this.user_face_url = user_face_url;
    }

    public Comment(String comment_id, String weibo_id, String comment, String user_account, Date comment_date, String user_face_url) {

        this.comment_id = comment_id;
        this.weibo_id = weibo_id;
        this.comment = comment;
        this.user_account = user_account;
        this.comment_date = comment_date;
        this.user_face_url = user_face_url;
    }
}

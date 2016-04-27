package com.springapp.mvc.Model;

import java.sql.Date;

/**
 * Created by hujiaxuan on 2016/4/21.
 */
public class Review {
    public String apply_id;
    public String user_account;
    public String apply_comment;
    public Date comment_date;
    public String user_behavior;

    public Review(String apply_id, String user_account, String apply_comment, Date comment_date, String user_behavior) {
        this.apply_id = apply_id;
        this.user_account = user_account;
        this.apply_comment = apply_comment;
        this.comment_date = comment_date;
        this.user_behavior = user_behavior;
    }

    public String getApply_id() {
        return apply_id;
    }

    public void setApply_id(String apply_id) {
        this.apply_id = apply_id;
    }

    public String getUser_account() {
        return user_account;
    }

    public void setUser_account(String user_account) {
        this.user_account = user_account;
    }

    public String getApply_comment() {
        return apply_comment;
    }

    public void setApply_comment(String apply_comment) {
        this.apply_comment = apply_comment;
    }

    public Date getComment_date() {
        return comment_date;
    }

    public void setComment_date(Date comment_date) {
        this.comment_date = comment_date;
    }

    public String getUser_behavior() {
        return user_behavior;
    }

    public void setUser_behavior(String user_behavior) {
        this.user_behavior = user_behavior;
    }
}

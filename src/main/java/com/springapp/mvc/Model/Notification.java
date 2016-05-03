package com.springapp.mvc.Model;

import java.sql.Date;

/**
 * Created by hujiaxuan on 2016/5/3.
 */
public class Notification {
    public String user_id;
    public String user_account;
    public Date noti_date;
    public String msg;
    public String read_state;
    public String apply_id;
    public String from_who;

    public String getFrom() {
        return from_who;
    }

    public Notification(String user_id, String user_account, Date noti_date, String msg, String read_state, String apply_id, String from_who) {
        this.user_id = user_id;
        this.user_account = user_account;
        this.noti_date = noti_date;
        this.msg = msg;
        this.read_state = read_state;
        this.apply_id = apply_id;
        this.from_who = from_who;
    }

    public void setFrom(String from) {
        this.from_who = from;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getUser_account() {
        return user_account;
    }

    public void setUser_account(String user_account) {
        this.user_account = user_account;
    }

    public Date getNoti_date() {
        return noti_date;
    }

    public void setNoti_date(Date noti_date) {
        this.noti_date = noti_date;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getRead_state() {
        return read_state;
    }

    public void setRead_state(String read_state) {
        this.read_state = read_state;
    }

    public String getApply_id() {
        return apply_id;
    }

    public void setApply_id(String apply_id) {
        this.apply_id = apply_id;
    }
}

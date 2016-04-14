package com.springapp.mvc.Model;


import java.sql.Date;

/**
 * Created by hujiaxuan on 2016/4/8.
 */
public class Apply {
    public Apply(String apply_id,String user_id, String user_apply_time, String user_account, String user_department, String trip_destination, Date trip_time_begin, Date trip_time_end, String trip_reason, String trip_phonecall) {
        this.apply_id = apply_id;
        this.user_id = user_id;
        this.user_apply_time = user_apply_time;
        this.user_account = user_account;
        this.user_department = user_department;
        this.trip_destination = trip_destination;
        this.trip_time_begin = trip_time_begin;
        this.trip_time_end = trip_time_end;
        this.trip_reason = trip_reason;
        this.trip_phonecall = trip_phonecall;
    }
    private String apply_id;
    private String user_id;
    private String user_account;
    private String user_department;
    private String user_apply_time;
    private String trip_destination;
    private Date trip_time_begin;
    private Date trip_time_end;
    private String trip_reason;
    private String trip_phonecall;

    public String getApply_id() {
        return apply_id;
    }

    public void setApply_id(String apply_id) {
        this.apply_id = apply_id;
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

    public String getUser_department() {
        return user_department;
    }

    public void setUser_department(String user_department) {
        this.user_department = user_department;
    }

    public String getTrip_destination() {
        return trip_destination;
    }

    public void setTrip_destination(String trip_destination) {
        this.trip_destination = trip_destination;
    }

    public String getUser_apply_time() {
        return user_apply_time;
    }

    public void setUser_apply_time(String user_apply_time) {
        this.user_apply_time = user_apply_time;
    }

    public Date getTrip_time_end() {
        return trip_time_end;
    }

    public void setTrip_time_end(Date trip_time_end) {
        this.trip_time_end = trip_time_end;
    }

    public Date getTrip_time_begin() {
        return trip_time_begin;
    }

    public void setTrip_time_begin(Date trip_time_begin) {
        this.trip_time_begin = trip_time_begin;
    }

    public String getTrip_reason() {
        return trip_reason;
    }

    public void setTrip_reason(String trip_reason) {
        this.trip_reason = trip_reason;
    }

    public String getTrip_phonecall() {
        return trip_phonecall;
    }

    public void setTrip_phonecall(String trip_phonecall) {
        this.trip_phonecall = trip_phonecall;
    }
}

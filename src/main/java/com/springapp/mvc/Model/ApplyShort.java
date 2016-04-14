package com.springapp.mvc.Model;

/**
 * Created by hujiaxuan on 2016/4/12.
 */
public class ApplyShort {
    public String apply_id;
    public String apply_user;
    public String trip_reason;
    public String apply_state;

    public String getApply_id() {
        return apply_id;
    }

    public void setApply_id(String apply_id) {
        this.apply_id = apply_id;
    }

    public String getApply_user() {
        return apply_user;
    }

    public void setApply_user(String apply_user) {
        this.apply_user = apply_user;
    }

    public String getTrip_reason() {
        return trip_reason;
    }

    public void setTrip_reason(String trip_reason) {
        this.trip_reason = trip_reason;
    }

    public String getApply_state() {
        return apply_state;
    }

    public void setApply_state(String apply_state) {
        this.apply_state = apply_state;
    }

    public ApplyShort(String apply_id, String apply_user, String trip_reason, String apply_state) {

        this.apply_id = apply_id;
        this.apply_user = apply_user;
        this.trip_reason = trip_reason;
        this.apply_state = apply_state;
    }
}

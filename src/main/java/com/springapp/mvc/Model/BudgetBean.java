package com.springapp.mvc.Model;

/**
 * Created by hujiaxuan on 2016/4/11.
 */
public class BudgetBean {
    private String apply_id;
    private String budget_info;
    private String budget_class;
    private float budget_price;
    private int budget_num;

    public BudgetBean(String apply_id, String budget_info, String budget_class, float budget_price, int budget_num) {
        this.apply_id = apply_id;
        this.budget_info = budget_info;
        this.budget_class = budget_class;
        this.budget_price = budget_price;
        this.budget_num = budget_num;
    }

    public String getApply_id() {
        return apply_id;
    }

    public void setApply_id(String apply_id) {
        this.apply_id = apply_id;
    }

    public String getBudget_info() {
        return budget_info;
    }

    public void setBudget_info(String budget_info) {
        this.budget_info = budget_info;
    }

    public String getBudget_class() {
        return budget_class;
    }

    public void setBudget_class(String budget_class) {
        this.budget_class = budget_class;
    }

    public float getBudget_price() {
        return budget_price;
    }

    public void setBudget_price(float budget_price) {
        this.budget_price = budget_price;
    }

    public int getBudget_num() {
        return budget_num;
    }

    public void setBudget_num(int budget_num) {
        this.budget_num = budget_num;
    }
}

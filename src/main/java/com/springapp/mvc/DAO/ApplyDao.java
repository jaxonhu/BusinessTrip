package com.springapp.mvc.DAO;

import com.springapp.mvc.Model.Apply;
import com.springapp.mvc.Model.ApplyShort;
import com.springapp.mvc.Model.BudgetBean;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by hujiaxuan on 2016/4/10.
 */
@Repository
public interface ApplyDao {
    public int insertApply(Apply apply);
    public int insertBudget(BudgetBean budgetBean);
    public List<ApplyShort> selectApplyShortByuserId(String user_id);
    public Apply selectApplyByapply_id(String apply_id);
    public List<BudgetBean> selectAllBudgetByApplyId(String apply_id);
}

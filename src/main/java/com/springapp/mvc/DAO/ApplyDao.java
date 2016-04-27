package com.springapp.mvc.DAO;

import com.springapp.mvc.Model.Apply;
import com.springapp.mvc.Model.ApplyShort;
import com.springapp.mvc.Model.BudgetBean;
import org.apache.ibatis.annotations.Param;
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
    public int updateApplyInfo(Apply apply);
    public int updateBudget(BudgetBean budgetBean);
    public int deleteBudgetByApplyId(String apply_id);
    public int updateApplyMoney(java.lang.Float money,String apply_id);
    public float getApplyMoney(String apply_id);
    public String getApplyStateByApplyId(String apply_id);
    public String getApplyRes(String apply_id);
    public List<ApplyShort> selectAllApplyShortByDepartment(String department);
    public int updateApplyState(@Param(value = "apply_state")String applyState,@Param(value = "apply_id")String apply_id);
}

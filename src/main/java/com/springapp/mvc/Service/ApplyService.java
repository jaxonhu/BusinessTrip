package com.springapp.mvc.Service;

import com.springapp.mvc.Model.Apply;
import com.springapp.mvc.Model.BudgetBean;

/**
 * Created by hujiaxuan on 2016/4/10.
 */
public interface ApplyService {
        public int insertApplyInfo(Apply apply);
        public int insertBudget(BudgetBean budgetBean);
}

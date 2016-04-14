package com.springapp.mvc.Service.Impl;

import com.springapp.mvc.DAO.ApplyDao;
import com.springapp.mvc.DAO.UserDao;
import com.springapp.mvc.Model.Apply;
import com.springapp.mvc.Model.ApplyShort;
import com.springapp.mvc.Model.BudgetBean;
import com.springapp.mvc.Service.ApplyService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by hujiaxuan on 2016/4/10.
 */
@Service
public class ApplyServiceImpl implements ApplyService {
    @Resource
    public ApplyDao applyDao;
    @Override
    public int insertApplyInfo(Apply apply) {

        return applyDao.insertApply(apply);
    }

    @Override
    public int insertBudget(BudgetBean budgetBean) {
        return applyDao.insertBudget(budgetBean);
    }

    @Override
    public List<ApplyShort> selectAllApplyShortByuserId(String user_id) {

        return applyDao.selectApplyShortByuserId(user_id);
    }
}

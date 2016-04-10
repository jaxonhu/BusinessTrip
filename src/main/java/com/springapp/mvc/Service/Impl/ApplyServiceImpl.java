package com.springapp.mvc.Service.Impl;

import com.springapp.mvc.DAO.ApplyDao;
import com.springapp.mvc.DAO.UserDao;
import com.springapp.mvc.Model.Apply;
import com.springapp.mvc.Service.ApplyService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by hujiaxuan on 2016/4/10.
 */
@Service
public class ApplyServiceImpl implements ApplyService {
    @Resource
    public ApplyDao applyDao;
    @Override
    public boolean insertApplyInfo(Apply apply) {

        return applyDao.insertApply(apply);
    }
}

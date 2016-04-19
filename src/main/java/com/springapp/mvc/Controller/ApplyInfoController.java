package com.springapp.mvc.Controller;

import com.springapp.mvc.Model.Apply;
import com.springapp.mvc.Model.BudgetBean;
import com.springapp.mvc.Service.ApplyService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.List;

/**
 * Created by hujiaxuan on 2016/4/18.
 */
@Controller
@RequestMapping("/applyInfo")
public class ApplyInfoController {
    @Resource
    private ApplyService applyService;
    @RequestMapping(value = "/{apply_id}")
    public ModelAndView index(@PathVariable("apply_id")String apply_id)throws IOException{
        ModelAndView mv = new ModelAndView();

        Apply apply = applyService.selectApplyByapplyId(apply_id);
        List<BudgetBean> budgetBeans = applyService.selectAllBudgetByApplyId(apply_id);

        apply.budget_money = applyService.getApplyBudgetMoney(apply_id);
        apply.apply_state = applyService.getApplyStateByApplyId(apply_id);
        apply.apply_res = applyService.getApplyRes(apply_id);
        mv.addObject("apply",apply);
        mv.addObject("budgets",budgetBeans);
        mv.setViewName("applyInfo");
        return mv;
    }
}

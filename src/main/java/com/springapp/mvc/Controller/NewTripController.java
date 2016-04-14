package com.springapp.mvc.Controller;

import com.springapp.mvc.Model.Apply;
import com.springapp.mvc.Model.BudgetBean;
import com.springapp.mvc.Service.ApplyService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.List;

/**
 * Created by hujiaxuan on 2016/4/8.
 */
@Controller
@RequestMapping("/apply")
public class NewTripController {
    @Resource
    public ApplyService applyService;
    @RequestMapping
    public ModelAndView index(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("new");
        return mv;
    }
    @RequestMapping(value ="/{apply_id}")
    public ModelAndView updateApply(@PathVariable("apply_id")String apply_id)throws IOException{
        ModelAndView mv = new ModelAndView();

        Apply apply = applyService.selectApplyByapplyId(apply_id);
        List<BudgetBean> budgetBeans = applyService.selectAllBudgetByApplyId(apply_id);

        mv.addObject("apply",apply);
        mv.addObject("budgetBeans",budgetBeans);

        mv.setViewName("apply_put");
        return mv;
    }
}


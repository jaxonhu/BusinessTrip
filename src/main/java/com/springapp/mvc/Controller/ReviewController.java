package com.springapp.mvc.Controller;

import com.springapp.mvc.Model.Apply;
import com.springapp.mvc.Model.ApplyShort;
import com.springapp.mvc.Model.BudgetBean;
import com.springapp.mvc.Model.UserClient;
import com.springapp.mvc.Service.ApplyService;
import com.springapp.mvc.Service.UserClientService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created by hujiaxuan on 2016/4/19.
 */
@Controller
@RequestMapping("/review")
public class ReviewController {
    @Resource
    private UserClientService userService;
    @Resource
    private ApplyService applyService;
    @RequestMapping
    public ModelAndView index(HttpServletRequest request,HttpServletResponse response)throws IOException{
        ModelAndView mv = new ModelAndView();
        HttpSession session = request.getSession();
        String user_id = (String)session.getAttribute("user_id");
        if(!user_id.equals("")){
            UserClient uc = userService.selectUserById(user_id);
            List<ApplyShort> applyShorts = applyService.selectAllApplyShortByUserDepartment(uc.getUser_department());
            mv.addObject("user",uc);
            mv.addObject("applyShorts",applyShorts);
        }

        mv.setViewName("applyReview");
        return mv;
    }
    /*
    * 这里检测user_id是否为空，如果为空则重新登陆
    * */
    @RequestMapping(value = "/{apply_id}")
    public ModelAndView applyReview(@PathVariable("apply_id")String apply_id,HttpServletRequest request,HttpServletResponse response)throws IOException{
        ModelAndView mv = new ModelAndView();
        Apply apply = applyService.selectApplyByapplyId(apply_id);
        HttpSession session = request.getSession();
        String user_id = (String)session.getAttribute("user_id");
        UserClient uc = userService.selectUserById(user_id);
        List<BudgetBean> budgets = applyService.selectAllBudgetByApplyId(apply_id);
        mv.addObject("user",uc);
        mv.addObject("budgets",budgets);
        mv.addObject("apply",apply);
        mv.setViewName("reviewInfo");
        return mv;
    }
    @RequestMapping(value = "/commit/{apply_id}",method = RequestMethod.POST)
    public @ResponseBody String makeReview(@PathVariable("apply_id")String apply_id,HttpServletRequest request,HttpServletResponse response)throws IOException{

        String review_comment = request.getParameter("review_comment");
        String review = request.getParameter("review");
        String review_date = request.getParameter("review_date");

        return "success";
    }
}

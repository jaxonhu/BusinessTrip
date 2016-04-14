package com.springapp.mvc.Controller;

import com.springapp.mvc.Model.*;
import com.springapp.mvc.Service.ApplyService;
import com.springapp.mvc.Service.UserClientService;
import com.springapp.mvc.Utils.DateTransform;
import com.springapp.mvc.Utils.IDworker;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
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
 * Created by hujiaxuan on 2016/4/7.
 */
@Controller
@RequestMapping("/mytrip")
public class MyTripController {
    @Resource
    public UserClientService userService;
    @Resource
    public ApplyService applyService;
    @RequestMapping
    public ModelAndView index(HttpServletRequest request,HttpServletResponse response)throws  IOException{

        ModelAndView mv = new ModelAndView();
        HttpSession session = request.getSession();

        String user_id = (String)session.getAttribute("user_id");

        if(!user_id.equals("")){
            List<ApplyShort> applyShorts = applyService.selectAllApplyShortByuserId(user_id);
            mv.addObject("applyShorts",applyShorts);
        }

        mv.setViewName("mytrip");


        return mv;
    }
    // user_name == name_account
    @RequestMapping(value = "/new",method = RequestMethod.POST)
    public @ResponseBody String MyTripNew(HttpServletRequest request,HttpServletResponse response)throws IOException {
        String user_name = request.getParameter("user_name");
        String user_department = request.getParameter("user_department");
        String user_apply_time = request.getParameter("user_apply_time");
        String trip_destination = request.getParameter("trip_destination");
        String trip_time_begin = new DateTransform().date_transform(request.getParameter("trip_time_begin"));
        String trip_time_end = new DateTransform().date_transform( request.getParameter("trip_time_end"));
        String trip_reason = request.getParameter("trip_reason");
        String trip_phonecall = request.getParameter("user_phonecall");

        IDworker iDworker = new IDworker(1);
        String  apply_id = Long.toString(iDworker.nextId());
        UserClient user = userService.selectUserByAccount(user_name);
        Apply apply = new Apply(apply_id,user.getUser_id(),user_apply_time,user_name,user_department,trip_destination,
                trip_time_begin,trip_time_end,trip_reason,trip_phonecall);

        long res = applyService.insertApplyInfo(apply);//返回成功时值为1

        if(res == 1){
            return apply_id;
        }else{
            return "申请失败，请重新申请";
        }
    }
    @RequestMapping(value = "/addBudget",method = RequestMethod.POST)
    @ResponseBody
    public String addBudget(@RequestBody List<Budget> budgets)throws IOException{

        String apply_id;
        String budget_info;
        String budget_class;
        float budget_price;
        int budget_num;

        for(Budget budget :budgets){
            apply_id = budget.apply_id;
            budget_info = budget.budget_info;
            budget_class = budget.budget_class;
            budget_price = Float.parseFloat(budget.budget_price);
            budget_num = Integer.parseInt(budget.budget_num);
            BudgetBean budgetBean = new BudgetBean(apply_id,budget_info,budget_class,budget_price,budget_num);
            applyService.insertBudget(budgetBean);
        }
        return "success";
    }
}

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
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

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
        Date time_begin=null,time_end=null;
        String user_name = request.getParameter("user_name");
        String user_department = request.getParameter("user_department");
        String user_apply_time = request.getParameter("user_apply_time");
        String trip_destination = request.getParameter("trip_destination");
        String trip_time_begin = new DateTransform().date_transform(request.getParameter("trip_time_begin"));
        String trip_time_end = new DateTransform().date_transform( request.getParameter("trip_time_end"));
        String trip_reason = request.getParameter("trip_reason");
        String trip_phonecall = request.getParameter("user_phonecall");
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        IDworker iDworker = new IDworker(1);
        String  apply_id = Long.toString(iDworker.nextId());
        UserClient user = userService.selectUserByAccount(user_name);

        time_begin = Date.valueOf(trip_time_begin);
        time_end = Date.valueOf(trip_time_end);

        Apply apply = new Apply(apply_id,user.getUser_id(),user_apply_time,user_name,user_department,trip_destination,
                time_begin,time_end,trip_reason,trip_phonecall,"待审批");

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

        applyService.insertBudgets(budgets);

        for(Budget budget :budgets){
            apply_id = budget.apply_id;
            budget_info = budget.budget_info;
            budget_class = budget.budget_class;
            budget_price = Float.parseFloat(budget.budget_price);
            budget_num = Integer.parseInt(budget.budget_num);

            BudgetBean budgetBean = new BudgetBean(apply_id,budget_info,budget_class,budget_price,budget_num);
            applyService.insertBudget(budgetBean);
        }
        int res = applyService.caculateApplyBudget(budgets);
        return "success";
    }
    @RequestMapping(value = "/updateBudget",method = RequestMethod.POST)
    @ResponseBody
    public String updateBudget(@RequestBody List<Budget> budgets)throws IOException{
        String apply_id;
        String budget_info;
        String budget_class;
        float budget_price;
        int budget_num;

        apply_id = budgets.get(0).apply_id;
        //这里如果预算列表为空怎样处理
        int res= applyService.deleteBudgetByApplyId(apply_id);



        for(Budget budget :budgets){
            apply_id = budget.apply_id;
            budget_info = budget.budget_info;
            budget_class = budget.budget_class;
            budget_price = Float.parseFloat(budget.budget_price);
            budget_num = Integer.parseInt(budget.budget_num);
            BudgetBean budgetBean = new BudgetBean(apply_id,budget_info,budget_class,budget_price,budget_num);
            applyService.insertBudget(budgetBean);
        }
        int res2 = applyService.caculateApplyBudget(budgets);
        return "success";
    }
    @RequestMapping(value = "/update",method = RequestMethod.POST)
    @ResponseBody
    public String applyUpdate(HttpServletRequest request,HttpServletResponse response)throws IOException{

        Date time_begin=null,time_end=null;
        String user_name = request.getParameter("user_name");
        String user_department = request.getParameter("user_department");
        String user_apply_time = request.getParameter("user_apply_time");
        String trip_destination = request.getParameter("trip_destination");
        String trip_time_begin = new DateTransform().date_transform(request.getParameter("trip_time_begin"));
        String trip_time_end = new DateTransform().date_transform( request.getParameter("trip_time_end"));
        String trip_reason = request.getParameter("trip_reason");
        String trip_phonecall = request.getParameter("user_phonecall");
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        String apply_id = request.getParameter("apply_id");
        String apply_state  = applyService.getApplyStateByApplyId(apply_id);
        UserClient user = userService.selectUserByAccount(user_name);

        time_begin = Date.valueOf(trip_time_begin);
        time_end = Date.valueOf(trip_time_end);
        Apply apply = new Apply(apply_id,user.getUser_id(),user_apply_time,user_name,user_department,trip_destination,
                time_begin,time_end,trip_reason,trip_phonecall,apply_state);
        int res = applyService.updateApplyInfo(apply);
        if(res == 1){
            return apply_id;
        }else{
            return "更新失败，请重试";
        }

    }
}

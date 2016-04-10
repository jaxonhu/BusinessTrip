package com.springapp.mvc.Controller;

import com.springapp.mvc.Model.Apply;
import com.springapp.mvc.Model.UserClient;
import com.springapp.mvc.Service.ApplyService;
import com.springapp.mvc.Service.UserClientService;
import com.springapp.mvc.Utils.IDworker;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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
    public ModelAndView index(){

        return new ModelAndView("/mytrip");
    }
    // user_name == name_account
    @RequestMapping(value = "/new",method = RequestMethod.POST)
    public @ResponseBody String MyTripNew(HttpServletRequest request,HttpServletResponse response)throws IOException {
        String user_name = request.getParameter("user_name");
        String user_department = request.getParameter("user_department");
        String user_apply_time = request.getParameter("user_apply_time");
        String trip_destination = request.getParameter("trip_destination");
        String trip_time_begin = request.getParameter("trip_time_begin");
        String trip_time_end = request.getParameter("trip_time_end");
        String trip_reason = request.getParameter("trip_reason");
        String trip_phonecall = request.getParameter("trip_phonecall");

        IDworker iDworker = new IDworker(1);
        String  apply_id = Long.toString(iDworker.nextId());
        UserClient user = userService.selectUserByAccount(user_name);
        Apply apply = new Apply(user.getUser_id(),user_apply_time,user_name,user_department,trip_destination,
                trip_time_begin,trip_time_end,trip_reason,trip_phonecall);

        boolean res = applyService.insertApplyInfo(apply);


        return apply_id;
    }
}

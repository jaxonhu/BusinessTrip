package com.springapp.mvc.Controller;

import com.springapp.mvc.Model.UserClient;
import com.springapp.mvc.Model.Weibo;
import com.springapp.mvc.Service.UserClientService;
import com.springapp.mvc.Service.WeiboService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by hujiaxuan on 2016/4/5.
 */
@Controller
@RequestMapping("/home")
public class HomeController {
    @Resource
    private UserClientService service;
    @Resource
    private WeiboService weiboService;
    @RequestMapping
    public ModelAndView index(HttpServletRequest request,HttpServletResponse response){
        ModelAndView mv = new ModelAndView();
        HttpSession httpSession = request.getSession();
        String user_id = (String)httpSession.getAttribute("user_id");

        if(user_id==null||user_id.isEmpty()){
            mv.setViewName("login");
        }else{
            UserClient user = service.selectUserById(user_id);
            List<UserClient> managers =service.selectManager(user.user_department);
            List<UserClient> employees= service.selectEmployee(user.user_department);
            List<Weibo> records = weiboService.selectAllWeiboByDepartment(user.user_department);
            mv.addObject("weibo_list",records);
            mv.addObject("managers",managers);
            mv.addObject("employees",employees);
            mv.addObject("user",user);
            mv.setViewName("home");
        }
        return mv;
    }

}

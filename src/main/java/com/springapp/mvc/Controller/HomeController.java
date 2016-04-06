package com.springapp.mvc.Controller;

import com.springapp.mvc.Model.UserClient;
import com.springapp.mvc.Service.UserClientService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by hujiaxuan on 2016/4/5.
 */
@Controller
@RequestMapping("/home")
public class HomeController {
    @Resource
    private UserClientService service;
    @RequestMapping
    public ModelAndView index(HttpServletRequest request,HttpServletResponse response){
        ModelAndView mv = new ModelAndView();
        HttpSession httpSession = request.getSession();
        String user_id = (String)httpSession.getAttribute("user_id");
        if(user_id==null||user_id.isEmpty()){
            mv.setViewName("login");
        }else{
            UserClient user = service.selectUserById(user_id);
            mv.addObject("user",user);
            mv.setViewName("home");
        }
        return mv;
    }

}

package com.springapp.mvc.Controller;

import com.springapp.mvc.Model.Profile;
import com.springapp.mvc.Model.UserClient;
import com.springapp.mvc.Model.Weibo;
import com.springapp.mvc.Service.UserClientService;
import com.springapp.mvc.Service.WeiboService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created by hujiaxuan on 2016/4/25.
 */
@Controller
@RequestMapping("/profile")
public class ProfileController {
    @Resource
    private UserClientService service;
    @Resource
    private WeiboService weiboService;
    @RequestMapping
    public ModelAndView index(HttpServletRequest request,HttpServletResponse response)throws IOException {

        ModelAndView mv = new ModelAndView();
        HttpSession httpSession = request.getSession();
        String user_id = (String)httpSession.getAttribute("user_id");
        Profile profile;
        if(user_id==null||user_id.isEmpty()){
            mv.setViewName("login");
        }else{
            UserClient user = service.selectUserById(user_id);
            profile = service.getUserProfile(user.user_account);
            List<Weibo> records = weiboService.selectAllWeiboByDepartment(user.user_department);
            mv.addObject("profile",profile);
            mv.addObject("weibo_list",records);
            mv.addObject("user",user);
            mv.setViewName("profile");
        }
        return mv;
    }
    @RequestMapping(value = "/{user_id}")
    public ModelAndView index2(@PathVariable("user_id")String user_id,HttpServletRequest request,HttpServletResponse response){
        ModelAndView mv = new ModelAndView();
        HttpSession httpSession = request.getSession();

        Profile profile;
        UserClient user = service.selectUserById(user_id);
        profile = service.getUserProfile(user.user_account);
        List<Weibo> records = weiboService.selectAllWeiboByDepartment(user.user_department);
        mv.addObject("profile",profile);
        mv.addObject("weibo_list",records);
        mv.addObject("user",user);
        mv.setViewName("profile");
        mv.addObject("visitor","guest");
        return mv;
   }

}


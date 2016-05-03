package com.springapp.mvc.Controller;

import com.springapp.mvc.Model.Profile;
import com.springapp.mvc.Model.UserClient;
import com.springapp.mvc.Service.UserClientService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by hujiaxuan on 2016/4/28.
 */
@Controller
@RequestMapping(value = "/setting")
public class SettingController {

    @Resource
    public UserClientService userService;


    @RequestMapping
    public ModelAndView index(HttpServletRequest request,HttpServletResponse response,HttpSession session)throws IOException{
        ModelAndView mv = new ModelAndView();
        String user_id = (String)session.getAttribute("user_id");
        UserClient uc ;
        if(!user_id.equals("")){
            uc = userService.selectUserById(user_id);
            mv.addObject("user",uc);
        }
        mv.setViewName("setting");
        return mv;
    }
    @RequestMapping(value = "/profile")
    public ModelAndView index_profile(HttpServletRequest request,HttpServletResponse response)throws IOException{

        ModelAndView mv = new ModelAndView();

        HttpSession session = request.getSession();
        String user_id = (String)session.getAttribute("user_id");
        UserClient uc;
        Profile  profile;
        if(!user_id.equals("")){
            uc = userService.selectUserById(user_id);
            profile = userService.getUserProfile(uc.user_account);
            mv.addObject("user",uc);
            mv.addObject("profile",profile);
        }

        mv.setViewName("setting_profile");
        return mv;
    }
    @RequestMapping(value = "/password")
    public ModelAndView index_password(HttpServletRequest request,HttpServletResponse response){
        ModelAndView mv = new ModelAndView();
        HttpSession session = request.getSession();
        String user_id = (String)session.getAttribute("user_id");
        UserClient uc;
        Profile  profile;
        if(!user_id.equals("")){
            uc = userService.selectUserById(user_id);
            profile = userService.getUserProfile(uc.user_account);
            mv.addObject("user",uc);
            mv.addObject("profile",profile);
        }
        mv.setViewName("setting_password");
        return mv;
    }
    @RequestMapping(value = "/password/save",method = RequestMethod.POST)
    public @ResponseBody String  save_password(HttpServletRequest request,HttpServletResponse response,HttpSession session){
        String user_id = (String)session.getAttribute("user_id");
        String password_new = request.getParameter("password_new");
        String password_old = request.getParameter("password_old");
        UserClient uc;
        if(!user_id.equals("")){
            uc = userService.selectUserById(user_id);

            if(!password_old.equals(uc.user_password)){
                return "password_error";
            }

            int res = userService.updateUserPassword(password_new,user_id);
            return "success";
        }
        return "error";
    }
    @RequestMapping(value = "/profile/save",method = RequestMethod.POST)
    public @ResponseBody String saveProfile(HttpServletRequest request,HttpServletResponse response,HttpSession session)throws IOException{

        String user_id = (String)session.getAttribute("user_id");
        String phone = request.getParameter("phone");
        String description = request.getParameter("description");

        UserClient uc = userService.selectUserById(user_id);
        String user_account = uc.user_account;

        int res = userService.saveUserProfile(user_account,description,phone);

        if(res>0){
            return "success";
        }
        return "error";
    }
}

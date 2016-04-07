package com.springapp.mvc.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by hujiaxuan on 2016/4/7.
 */
@RequestMapping("/mytrip")
public class MyTripController {
    @RequestMapping
    public ModelAndView index(){

        return new ModelAndView("/mytrip");
    }

    @RequestMapping("/new")
    public @ResponseBody String MyTripNew(HttpServletRequest request,HttpServletResponse response){
        String user_name = request.getParameter("user_name");
        return "success";
    }
}

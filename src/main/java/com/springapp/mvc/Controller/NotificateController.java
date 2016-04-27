package com.springapp.mvc.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by hujiaxuan on 2016/4/25.
 */
@Controller
@RequestMapping("/notification")
public class NotificateController{

    @RequestMapping
    public ModelAndView index(HttpServletRequest request,HttpServletResponse response){

        ModelAndView mv = new ModelAndView();
        mv.setViewName("notification");
        return mv;
    }

}

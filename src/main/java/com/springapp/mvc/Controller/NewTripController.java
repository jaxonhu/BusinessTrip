package com.springapp.mvc.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by hujiaxuan on 2016/4/8.
 */
@Controller
@RequestMapping("/apply")
public class NewTripController {
    @RequestMapping
    public ModelAndView index(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("new");
        return mv;
    }
}


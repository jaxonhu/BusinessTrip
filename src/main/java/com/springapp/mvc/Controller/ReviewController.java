package com.springapp.mvc.Controller;

import com.springapp.mvc.Model.ApplyShort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by hujiaxuan on 2016/4/19.
 */
@Controller
@RequestMapping("/review")
public class ReviewController {
    @RequestMapping
    public ModelAndView index(HttpServletRequest request,HttpServletResponse response)throws IOException{
        ModelAndView mv = new ModelAndView();
//        List<ApplyShort> applyShorts =
        mv.setViewName("applyReview");
        return mv;
    }
}

package com.springapp.mvc.Controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.springapp.mvc.Model.Comment;
import com.springapp.mvc.Model.UserClient;
import com.springapp.mvc.Model.Weibo;
import com.springapp.mvc.Service.UserClientService;
import com.springapp.mvc.Service.WeiboService;
import com.springapp.mvc.Utils.DateTransform;
import com.springapp.mvc.Utils.IDworker;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

/**
 * Created by hujiaxuan on 2016/4/25.
 */
@Controller
@RequestMapping("/weibo")
public class WeiboController {

    @Resource
    public UserClientService userService;
    @Resource
    public WeiboService weiboService;

    @RequestMapping("/publish")
    public @ResponseBody String weiboPublish(HttpServletRequest request,HttpServletResponse response){

        HttpSession session = request.getSession();
        String user_id = (String)session.getAttribute("user_id");
        String content = request.getParameter("weibo_content");
        String date = new DateTransform().date_transform_(request.getParameter("weibo_date"));
        Date weibo_date = Date.valueOf(date);
        int res = 0;
        if(!user_id.equals("")){
            UserClient uc = userService.selectUserById(user_id);
            IDworker iDworker = new IDworker(1);
            String  weibo_id = Long.toString(iDworker.nextId());
            Weibo weibo  = new Weibo(weibo_id,content,uc.user_account,weibo_date,0,uc.user_department,"/resources/image/profile-full-male.png");
             res = weiboService.weiboPublish(weibo);
        }
        return "success";
    }
    @RequestMapping(value = "/thumbOn",method = RequestMethod.POST)
    public @ResponseBody String weiboThumbOn(HttpServletRequest request,HttpServletResponse response)throws IOException{

        String weibo_id = request.getParameter("weibo_id");
        int num = Integer.parseInt(request.getParameter("num"));

        int res = weiboService.weiboThumbOn(weibo_id,num);
//        Weibo weibo = weiboService.selectWeiboById(weibo_id);
//
//        weibo.setThumb_on(num+1);
//
//        int res = weiboService.weiboThumbOn(weibo);

        return "success";
    }
    @RequestMapping(value = "/comments",method = RequestMethod.POST)
    public @ResponseBody void loadComments(HttpServletRequest request,HttpServletResponse response)throws  IOException{
        String weibo_id = request.getParameter("weibo_id");
        final ObjectMapper mapper = new ObjectMapper();
        List<Comment> list = weiboService.selectAllCommentsByWeiboId(weibo_id);
        String json = mapper.writeValueAsString(list);
        System.out.println(json);
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        PrintWriter printWriter = response.getWriter();
        printWriter.print(json);
        printWriter.flush();
    }
    @RequestMapping(value = "/comments/publish",method = RequestMethod.POST)
    public @ResponseBody String commentsPublish(HttpServletRequest request,HttpServletResponse response){

        String weibo_id = request.getParameter("weibo_id");
        String comment = request.getParameter("comment");
        String pre_date = new DateTransform().date_transform_(request.getParameter("date"));
        HttpSession session  = request.getSession();
        String user_id = (String)session.getAttribute("user_id");
        Date date = Date.valueOf(pre_date);
        UserClient uc;
        if(!user_id.equals("")){
            uc = userService.selectUserById(user_id);
            IDworker iDworker = new IDworker(1);
            String comment_id = Long.toString(iDworker.nextId());
            Comment comment1 = new Comment(comment_id,weibo_id,comment,uc.user_account,date,"/resources/image/profile-full-male.png");
            int res = weiboService.commentPublish(comment1);
        }
        return "success";
    }
}

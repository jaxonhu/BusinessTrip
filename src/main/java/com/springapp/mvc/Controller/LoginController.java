package com.springapp.mvc.Controller;

import com.springapp.mvc.Model.UserClient;
import com.springapp.mvc.Service.UserClientService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/login")
public class LoginController {
	@Resource
	public UserClientService userService;
	@RequestMapping
	public ModelAndView index(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}

	@RequestMapping(value = "/user_query",method = RequestMethod.POST)
	public  @ResponseBody String  login_query(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String user_account = request.getParameter("user_account");
		String user_password = request.getParameter("user_password");
		UserClient user = userService.selectUserByAccount(user_account);



		if(user!=null){

			if(!user_password.equals(user.user_password)){

				return "error";

			}else{
				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("user_id",user.getUser_id());

				String sessionId = httpSession.getId();
				if(httpSession.isNew()){
					System.out.println("session创建成功"+sessionId);
				}else{
					System.out.println("session已经存在"+sessionId);
				}

			}


			return "success";
		}else{
			return "error";
		}

	}
}
package com.controller;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.User;
import com.service.UserService;
@Controller @RequestMapping("/user")
public class UserController {
	@Resource
	UserService  userService;
	
	@RequestMapping("/login")
public String login(HttpServletRequest request) {
	String userNameOrEmail=request.getParameter("userName");
	String userPass=request.getParameter("userPass");
	String rememberMe=request.getParameter("rememberMe");
	
	User user=userService.loginByNameOrEmail(userNameOrEmail);
	if(user==null) {
		request.setAttribute("msg", "用户名错误");
		return "login";
	}
	else if(!user.getUserPass().equals(userPass)) {
		request.setAttribute("msg", "密码错误");
		return "login";
	}
	else {
		//用户登录成功能后,把用户相关的信息放到 session中,方便以后使用
		request.getSession().setAttribute("session_user", user);
		
		//如果用户勾选了rememberMe , 添加cookie相关的信息
		//更新用户的最后登录时间
		//更新用户的最后登录ip
		//user.setUserLastLoginTime(new Date());
		//user.setUserLastLoginIp(request.getRemoteAddr());
		//userService.updateUser(user);
		
		return  "index";    //src/main/webapp/view/index.jsp
		}
	}
}
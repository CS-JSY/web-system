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
		request.setAttribute("msg", "�û�������");
		return "login";
	}
	else if(!user.getUserPass().equals(userPass)) {
		request.setAttribute("msg", "�������");
		return "login";
	}
	else {
		//�û���¼�ɹ��ܺ�,���û���ص���Ϣ�ŵ� session��,�����Ժ�ʹ��
		request.getSession().setAttribute("session_user", user);
		
		//����û���ѡ��rememberMe , ���cookie��ص���Ϣ
		//�����û�������¼ʱ��
		//�����û�������¼ip
		//user.setUserLastLoginTime(new Date());
		//user.setUserLastLoginIp(request.getRemoteAddr());
		//userService.updateUser(user);
		
		return  "index";    //src/main/webapp/view/index.jsp
		}
	}
}
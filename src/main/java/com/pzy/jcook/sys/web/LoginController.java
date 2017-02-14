package com.pzy.jcook.sys.web;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pzy.jcook.sys.entity.User;
import com.pzy.jcook.sys.service.UserService;

@Controller
public class LoginController {
	
	private static final Logger log = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	public UserService userService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		Subject subject = SecurityUtils.getSubject();
		if(subject.isAuthenticated()||subject.isRemembered()){
			return "login";
		} 
		  return "login";
	}
	/***
	 * 登陆的逻辑已经被shiro过滤器处理，这里只要读取shiro处理后得到的结果
	 * @param req
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String dologin(HttpServletRequest req,Model model) {
		   String exceptionClassName = (String)req.getAttribute("shiroLoginFailure");  
	       log.info("登录失败{}",exceptionClassName); 
		   model.addAttribute("tip", "用户名/密码错误");  
		return "login";
	}
	
	@RequestMapping(value = "/loginout", method = RequestMethod.GET)
	public String loginout(Model model) {
		SecurityUtils.getSubject().logout();
		return "login";
	}
	
	@RequestMapping(value = {"/","","index"}, method = RequestMethod.GET)
	public String  index(Model model) {
		Subject subject = SecurityUtils.getSubject();
		 User user = (User)SecurityUtils.getSubject().getSession().getAttribute("currentUser");
		return "redirect:car/car/index";
	}
	
	
}

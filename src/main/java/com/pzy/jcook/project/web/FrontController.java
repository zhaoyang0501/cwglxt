package com.pzy.jcook.project.web;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pzy.jcook.project.entity.Answer;
import com.pzy.jcook.project.entity.Exam;
import com.pzy.jcook.project.service.CarService;
import com.pzy.jcook.project.service.ExamService;
import com.pzy.jcook.project.service.IllegalService;
import com.pzy.jcook.project.service.LicenseService;
import com.pzy.jcook.sys.entity.User;
import com.pzy.jcook.sys.service.UserService;

@Controller
@RequestMapping("web/")
public class FrontController {
	
	@Autowired
	private CarService carService;
	
	@Autowired
	private LicenseService licenseService;
	
	@Autowired
	private IllegalService illegalService;
	
	@Autowired
	private ExamService examService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = {"/","","index","car"}, method = RequestMethod.GET)
	public String index(Model model) {
		return "web/car";
	}
	
	
	@RequestMapping(value ="login", method = RequestMethod.GET)
	public String login(Model model) {
		return "web/login";
	}
	@RequestMapping(value ="login", method = RequestMethod.POST)
	public String login(Model model,String username,String password,HttpServletRequest  req) {
		User user = userService.findByUsername(username);
		if(user!=null&&user.getPassword().equals(DigestUtils.md5Hex(password))){
			req.getSession().setAttribute("webuser", user);
			return "web/car";
		}else
			
		return "web/login";
	}
	
	@RequestMapping("exam")
	public String exam(Model model) {
		model.addAttribute("exams", examService.findAll());
		return "web/exam";
	}
	
	
	
	@RequestMapping("loginout")
	public String loginout(Model model,HttpServletRequest  req) {
		req.getSession().setAttribute("webuser", null);
		return "web/car";
	}
	
	@RequestMapping("license")
	public String license() {
		return "web/license";
	}
	
	
	@RequestMapping("illegal")
	public String illegal() {
		return "web/illegal";
	}
	
	@RequestMapping("myanswer")
	public String myanswer(Model model,HttpServletRequest  req) {
		User user = (User)req.getSession().getAttribute("webuser");
		model.addAttribute("answers", examService.findUserAnswers(user));
		return "web/myanswer";
	}
	
	
	@RequestMapping("queryCar")
	public String queryCar(Model model,String carnum) {
		if(StringUtils.isBlank(carnum)){
			model.addAttribute("tip","车牌号码不可为空！");
		}else{
			model.addAttribute("cars",carService.findAll(1, 100, carnum, "name").getContent());
		}
			
		return "web/car";
	}
	
	
	@RequestMapping("queryLicense")
	public String queryLicense(Model model,String sn) {
		if(StringUtils.isBlank(sn)){
			model.addAttribute("tip","驾驶证号不可为空！");
		}else{
			model.addAttribute("licenses",licenseService.findAll(1, 100, sn, "sn").getContent());
		}
			
		return "web/license";
	}
	
	@RequestMapping("queryIllegal")
	public String queryIllegal(Model model,String carum) {
		if(StringUtils.isBlank(carum)){
			model.addAttribute("tip","车牌号不可为空！");
		}else{
			model.addAttribute("lists",illegalService.findAll(1, 100, carum, "carnum").getContent());
		}
			
		return "web/illegal";
	}
	

	@RequestMapping("submitExam/{id}")
	public String submitExam(HttpServletRequest  req,Long id,Model model) {
		User user = (User)req.getSession().getAttribute("webuser");
		Answer answer = new Answer();
		
		int rightnum = 0;
		int total = 0;
		for(String key:req.getParameterMap().keySet()){
			total++;
			Long qid=Long.valueOf(key);
			Exam exam = this.examService.find(qid);
			if(exam.getRightoption().equals(req.getParameter(key)))
				rightnum++;
			System.out.println(qid+",,,"+req.getParameter(key));
		}
		
		answer.setRightnum(rightnum);
		answer.setTotal(total);
		answer.setScore(rightnum*100/total);
		answer.setCreateDate(new Date());
		answer.setUser(user);
		examService.saveAnswer(answer);
		model.addAttribute("tip","提交成功，您的得分"+answer.getScore());
		model.addAttribute("exams", examService.findAll());
		return "web/exam";
	}
	
}

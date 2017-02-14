package com.pzy.jcook.project.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pzy.jcook.project.entity.Car;
import com.pzy.jcook.sys.web.AbstractBaseCURDController;

@Controller
@RequestMapping("car/car")
public class CarController extends AbstractBaseCURDController<Car,Long> {

	@Override
	protected String getBasePath() {
		return "car/car";
	}
	
	@Override
	@RequestMapping("index")
	public String index(Model model) {
		return this.getBasePath()+"/index";
	}
}

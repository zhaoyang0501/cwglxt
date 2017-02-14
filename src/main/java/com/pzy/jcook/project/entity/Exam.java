package com.pzy.jcook.project.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.pzy.jcook.sys.entity.BaseEntity;
@Entity
@Table(name = "t_car_exam")
public class Exam  extends BaseEntity<Long>{
	private String title;
	private String optiona;
	private String optionb;
	private String optionc;
	private String optiond;
	private String rightoption;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getOptiona() {
		return optiona;
	}
	public void setOptiona(String optiona) {
		this.optiona = optiona;
	}
	public String getOptionb() {
		return optionb;
	}
	public void setOptionb(String optionb) {
		this.optionb = optionb;
	}
	public String getOptionc() {
		return optionc;
	}
	public void setOptionc(String optionc) {
		this.optionc = optionc;
	}
	public String getOptiond() {
		return optiond;
	}
	public void setOptiond(String optiond) {
		this.optiond = optiond;
	}
	public String getRightoption() {
		return rightoption;
	}
	public void setRightoption(String rightoption) {
		this.rightoption = rightoption;
	}
	
	
	
}

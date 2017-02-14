package com.pzy.jcook.project.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.pzy.jcook.sys.entity.BaseEntity;

@Entity
@Table(name = "t_car_car")
public class Car  extends BaseEntity<Long>{
	private String name;
	
	private String sn;
	
	private String color;
	
	private String brand;
	
	private String  type;
	
	private Date registerDate;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSn() {
		return sn;
	}

	public void setSn(String sn) {
		this.sn = sn;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Date getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}

	
	
}

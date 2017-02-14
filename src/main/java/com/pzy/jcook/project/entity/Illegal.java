package com.pzy.jcook.project.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.pzy.jcook.sys.entity.BaseEntity;
@Entity
@Table(name = "t_car_Illegal")
public class Illegal  extends BaseEntity<Long>{
	public String carnum;
	private String addr;
	private String remark;
	private Integer score;
	private Integer cash;
	private String state;
	@JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8") 
	private Date produceDate;
	public String getCarnum() {
		return carnum;
	}
	public void setCarnum(String carnum) {
		this.carnum = carnum;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}
	public Integer getCash() {
		return cash;
	}
	public void setCash(Integer cash) {
		this.cash = cash;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Date getProduceDate() {
		return produceDate;
	}
	public void setProduceDate(Date produceDate) {
		this.produceDate = produceDate;
	}
	
	
	
}

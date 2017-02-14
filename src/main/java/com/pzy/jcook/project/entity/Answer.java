package com.pzy.jcook.project.entity;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.pzy.jcook.sys.entity.BaseEntity;
import com.pzy.jcook.sys.entity.User;
@Entity
@Table(name = "t_car_answer")
public class Answer  extends BaseEntity<Long>{
	private Integer total;
	
	private Integer rightnum;
	
	@ManyToOne
	private User user;
	
	private Integer score;

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	

	public Integer getRightnum() {
		return rightnum;
	}

	public void setRightnum(Integer rightnum) {
		this.rightnum = rightnum;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	
	
}

package com.pzy.jcook.project.repository;

import java.util.List;

import com.pzy.jcook.project.entity.Answer;
import com.pzy.jcook.sys.entity.User;
import com.pzy.jcook.sys.repository.BaseRepository;

public interface AnswerRepository   extends BaseRepository<Answer ,Long>{
	
	public List<Answer> findByUser(User user);
}

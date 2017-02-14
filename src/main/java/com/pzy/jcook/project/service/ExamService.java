package com.pzy.jcook.project.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pzy.jcook.project.entity.Answer;
import com.pzy.jcook.project.entity.Exam;
import com.pzy.jcook.project.repository.AnswerRepository;
import com.pzy.jcook.project.repository.ExamRepository;
import com.pzy.jcook.sys.entity.User;
import com.pzy.jcook.sys.service.BaseService;
@Service
public class ExamService extends BaseService<Exam, Long> {
	
	@Autowired
	private ExamRepository xamRepository;
	
	@Autowired
	private AnswerRepository answerRepository;
	
	public void saveAnswer(Answer answer){
		this.answerRepository.save( answer);
	}
	public List<Exam> findAll(){
		return (List<Exam>)this.xamRepository.findAll();
	}
	
	public List<Answer> findUserAnswers(User user){
		return this.answerRepository.findByUser(user);
	}
}

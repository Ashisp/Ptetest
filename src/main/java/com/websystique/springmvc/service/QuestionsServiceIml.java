/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.websystique.springmvc.service;

import com.websystique.springmvc.dao.QuestionDao;
import com.websystique.springmvc.dao.UserDao;
import com.websystique.springmvc.model.Questions;
import com.websystique.springmvc.model.User;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author ashis
 */
@Service("questionService")
@Transactional
public class QuestionsServiceIml implements QuestionService{

    @Autowired
	private QuestionDao dao;
    public List<Questions> findAllQuestions() {
        

     
		return dao.findAllQuestions();
	
        
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}

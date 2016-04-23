/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.Questions;
import com.websystique.springmvc.model.User;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Repository;

/**
 *
 * @author ashis
 */
@Repository("questionsDao")
public class QuestionsDaoiml extends AbstractDao<Integer, Questions> implements QuestionDao{

    public List<Questions> findAllQuestions() {
        	@SuppressWarnings("unchecked")
	
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("sec_id"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		List<Questions> questions = (List<Questions>) criteria.list();
		
		return questions;
	
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
}

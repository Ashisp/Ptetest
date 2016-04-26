/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.Answers;
import com.websystique.springmvc.model.Users;
import java.util.Collection;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Repository;

/**
 *
 * @author ashis
 */
@Repository("answersDao")
public class AnswersDaoIml extends AbstractDao<Integer, Answers> implements AnswersDao{

    public Answers findById(int id) {
       Answers answers= getByKey(id);
       return answers;

// throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void save(Answers answers) {

        persist(answers);
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    @SuppressWarnings("unchecked")
    public Collection<Answers> findAllAnswers() {
        Criteria criteria = createEntityCriteria().addOrder(Order.asc("answer_id"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		List<Answers> answers = (List<Answers>) criteria.list();
	
		return answers;

        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
    
    
    
    
}
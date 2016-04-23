/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.websystique.springmvc.service;

import com.websystique.springmvc.model.Questions;
import com.websystique.springmvc.model.User;
import java.util.List;

/**
 *
 * @author ashis
 */
public interface QuestionService {
     List<Questions> findAllQuestions(); 
    
}

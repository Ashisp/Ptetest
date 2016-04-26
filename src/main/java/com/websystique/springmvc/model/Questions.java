/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.websystique.springmvc.model;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ashis
 */
@Entity
@Table(catalog = "rendron_db", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Questions.findAll", query = "SELECT q FROM Questions q"),
    @NamedQuery(name = "Questions.findByQuestionId", query = "SELECT q FROM Questions q WHERE q.questionId = :questionId"),
    @NamedQuery(name = "Questions.findByCatId", query = "SELECT q FROM Questions q WHERE q.catId = :catId")})
public class Questions implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "question_id", nullable = false)
    private Integer questionId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "cat_id", nullable = false)
    private int catId;
    @Lob
    @Size(max = 65535)
    @Column(name = "media_path", length = 65535)
    private String mediaPath;
    @Lob
    @Size(max = 65535)
    @Column(length = 65535)
    private String passage;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(nullable = false, length = 65535)
    private String question;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "questionId")
    private Collection<AnswerOptions> answerOptionsCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "questionId")
    private Collection<Answers> answersCollection;
    @JoinColumn(name = "question_id", referencedColumnName = "cat_id", nullable = false, insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Categories categories;
    @JoinColumn(name = "type_id", referencedColumnName = "type_id", nullable = false)
    @ManyToOne(optional = false)
    private QuestionTypes typeId;
    @JoinColumn(name = "section_id", referencedColumnName = "section_id", nullable = false)
    @ManyToOne(optional = false)
    private Sections sectionId;

    public Questions() {
    }

    public Questions(Integer questionId) {
        this.questionId = questionId;
    }

    public Questions(Integer questionId, int catId, String question) {
        this.questionId = questionId;
        this.catId = catId;
        this.question = question;
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public int getCatId() {
        return catId;
    }

    public void setCatId(int catId) {
        this.catId = catId;
    }

    public String getMediaPath() {
        return mediaPath;
    }

    public void setMediaPath(String mediaPath) {
        this.mediaPath = mediaPath;
    }

    public String getPassage() {
        return passage;
    }

    public void setPassage(String passage) {
        this.passage = passage;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    @XmlTransient
    public Collection<AnswerOptions> getAnswerOptionsCollection() {
        return answerOptionsCollection;
    }

    public void setAnswerOptionsCollection(Collection<AnswerOptions> answerOptionsCollection) {
        this.answerOptionsCollection = answerOptionsCollection;
    }

    @XmlTransient
    public Collection<Answers> getAnswersCollection() {
        return answersCollection;
    }

    public void setAnswersCollection(Collection<Answers> answersCollection) {
        this.answersCollection = answersCollection;
    }

    public Categories getCategories() {
        return categories;
    }

    public void setCategories(Categories categories) {
        this.categories = categories;
    }

    public QuestionTypes getTypeId() {
        return typeId;
    }

    public void setTypeId(QuestionTypes typeId) {
        this.typeId = typeId;
    }

    public Sections getSectionId() {
        return sectionId;
    }

    public void setSectionId(Sections sectionId) {
        this.sectionId = sectionId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (questionId != null ? questionId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Questions)) {
            return false;
        }
        Questions other = (Questions) object;
        if ((this.questionId == null && other.questionId != null) || (this.questionId != null && !this.questionId.equals(other.questionId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.websystique.springmvc.model.Questions[ questionId=" + questionId + " ]";
    }
    
}

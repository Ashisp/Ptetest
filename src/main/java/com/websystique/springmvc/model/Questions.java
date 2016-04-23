package com.websystique.springmvc.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "questionss")
public class Questions implements Serializable{

   
 
@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
 
    @Column(name = "cat_id", unique = true, nullable = false)
    private int cat_id;
@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "sec_id", nullable = false)
    private int sec_id;

    @NotEmpty
    @Column(name = "instructions", nullable = false)
    private String instructions;

    @NotEmpty
    @Column(name = "audioimage", nullable = false)
    private String audioimage;

    @NotEmpty
    @Column(name = "passage", nullable = false)
    private String passage;
    @NotEmpty
    @Column(name = "questions", nullable = false)
    private String questions;

    //@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
   // private Set<UserDocument> userDocuments = new HashSet<UserDocument>();

//    @NotEmpty
//    @ManyToMany(fetch = FetchType.LAZY)
//    @JoinTable(name = "SECTIONS", 
//             joinColumns = { @JoinColumn(name = "sec_id") }, 
//             inverseJoinColumns = { @JoinColumn(name = "sec_id") })
// private Set<Sections> sections = new HashSet<Sections>();
//
//@NotEmpty
//    @ManyToMany(fetch = FetchType.LAZY)
// @JoinTable(name = "categories", 
//             joinColumns = { @JoinColumn(name = "id") }, 
//             inverseJoinColumns = { @JoinColumn(name = "cat_id") })
// private Set<Categories> categories = new HashSet<Categories>();
//   
    
    
    @ManyToMany
@JoinTable(
    name = "QUESTIONS", 
    joinColumns = { @JoinColumn(name = "id"),
                    @JoinColumn(name = "title") }
        ,
        inverseJoinColumns = {@JoinColumn(name = "sec_id")}

)
    //categories

private Set<Sections> sections = new HashSet<Sections>();
    @Override
    public String toString() {
        return "User [cat_id=" + cat_id + ", sec_id=" + sec_id + ", instruction=" + instructions
                + ", questions=" + questions + ", passage=" + passage + ", audioimage=" + audioimage + "  ]";
    }

    
   
    
           public Set<Sections> getSections() {
        return sections;
    }
 
    public void setSections(Set<Sections> sections) {
        this.sections = sections;
    }
}

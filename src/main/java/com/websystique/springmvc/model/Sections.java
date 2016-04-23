package com.websystique.springmvc.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
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
@Table(name = "sections")
public class Sections {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

   

    @NotEmpty
    @Column(name = "title", nullable = false)
    private String title;

    @NotEmpty
    @Column(name = "time", nullable = false)
    private String time;

    

    //@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
   // private Set<UserDocument> userDocuments = new HashSet<UserDocument>();


//@NotEmpty
//    @ManyToMany(fetch = FetchType.LAZY)
//    @JoinTable(name = "sections", 
//             joinColumns = { @JoinColumn(name = "USER_ID") }, 
//             inverseJoinColumns = { @JoinColumn(name = "USER_PROFILE_ID") })
//    private Set<UserProfile> userProfiles = new HashSet<UserProfile>();


    @Override
    public String toString() {
        return "Sections [id=" + id + ", section_title=" + title + ", time=" + time+"  ]";
    }

}

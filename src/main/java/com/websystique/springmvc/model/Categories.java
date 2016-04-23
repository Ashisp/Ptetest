package com.websystique.springmvc.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "categories")
public class Categories {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

   

    @NotEmpty
    @Column(name = "categories", nullable = false)
    private String categories;

   
    

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
        return "Categories [id=" + id + ", categories=" + categories  +" ]";
    }

}

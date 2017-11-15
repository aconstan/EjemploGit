/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author admin
 */
public class Student {
    private String id;
    private String name;
    private String scholarship;
    private String type;
    
    public Student() {
        
    }
    
    public Student(String id, String name, String scholarship, String type) {
        this.id=id;
        this.name=name;
        this.scholarship=scholarship;
        this.type=type;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getScholarship() {
        return scholarship;
    }

    public void setScholarship(String scholarship) {
        this.scholarship = scholarship;
    }
    
     public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    
}

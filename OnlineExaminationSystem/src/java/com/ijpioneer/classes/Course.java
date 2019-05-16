/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ijpioneer.classes;

/**
 *
 * @author AVI CHHETRI
 */
public class Course {
   private String cName;
   private int tMarks;
   private String time;

    public Course(String cName, int tMarks, String time) {
        this.cName = cName;
        this.tMarks = tMarks;
        
        this.time = time;
    }

    public Course(String cName, int tMarks) {
        this.cName = cName;
        this.tMarks = tMarks;
    }

    public Course() {
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    public int gettMarks() {
        return tMarks;
    }

    public void settMarks(int tMarks) {
        this.tMarks = tMarks;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
 
    
}

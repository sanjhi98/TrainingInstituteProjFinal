package com.vir.model;

public class Course {



	 private Integer CourseID;

	 private String CourseName;

	 

	 public Course() {

		super();

	}



	public Course(String courseName) {
		super();
		CourseName = courseName;
	}



	public Integer getCourseID() {
		return CourseID;
	}



	public void setCourseID(Integer courseID) {
		CourseID = courseID;
	}



	public String getCourseName() {
		return CourseName;
	}



	public void setCourseName(String courseName) {
		CourseName = courseName;
	}



	@Override
	public String toString() {
		return "Course [CourseID=" + CourseID + ", CourseName=" + CourseName + "]";
	}
	 
	

	}

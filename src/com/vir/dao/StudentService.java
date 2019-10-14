package com.vir.dao;

import java.util.List;

import com.vir.model.Student;

public interface StudentService {
	
	Student findById(Integer id);
	
	List<Student> getAllStudents();
	boolean addStudent(Student student);
	boolean removeStudent(Student student);
	boolean updateStudent(Student student);

}

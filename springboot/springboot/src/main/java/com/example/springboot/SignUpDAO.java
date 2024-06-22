package com.example.springboot;


public interface SignUpDAO {
	
	void insertdata(SignUp sp);
	SignUp findByEmailAndPassword(String email, String password);
}

 package com.example.springboot;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class SignUpDAOClass implements SignUpDAO{

	@Autowired
	public SignUpRepository sr;
	
	@Override
	public void insertdata(SignUp sp) {
		// TODO Auto-generated method stub
		sr.save(sp);
	}

	public Optional<SignUp> findpatbyId(String email) {
		// TODO Auto-generated method stub
		return sr.findById(email);
	}

	/*@Override
	public SignUp checklogin(String email, String pwd) {
		// TODO Auto-generated method stub
		return sr.checklogin(email);
		
	}
	*/
}

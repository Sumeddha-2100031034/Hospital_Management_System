 package com.example.springboot;

import java.time.LocalDate;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class SignUpDAOClass implements SignUpDAO{

	@Autowired
	public SignUpRepository sr;
	
	
	public void insertdata(SignUp sp) {
		// TODO Auto-generated method stub
		sr.save(sp);
	}

	public Optional<SignUp> findpatbyId(String email) {
		// TODO Auto-generated method stub
		return sr.findById(email);
	}
	
	public SignUp findByEmailAndPassword(String email, String password) {
		// TODO Auto-generated method stub
		return sr.findByEmailAndPassword(email, password);
	}

	public SignUp findByEmail(String email) {
		// TODO Auto-generated method stub
		return sr.findByEmail(email);
	}
	
	public String generateUniquePatientId() {
        String patientId;
        do {
            patientId = UUID.randomUUID().toString();
        } while (sr.existsByPatientId(patientId));
        return patientId;
    }
}

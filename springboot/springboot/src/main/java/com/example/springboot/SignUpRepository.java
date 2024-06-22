package com.example.springboot;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface SignUpRepository extends JpaRepository<SignUp, String>{

	SignUp findByEmailAndPassword(String email, String password);
	SignUp findByEmail(String email);
	boolean existsByPatientId(String patientId);
	
}

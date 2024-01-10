package com.example.springboot;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class PaymentDAOClass implements PaymentDAO{

	@Autowired
	private PaymentRepository pr;
	
	@Override
	public void insertDetails(Payment p) {
		// TODO Auto-generated method stub
		pr.save(p);
	}

}

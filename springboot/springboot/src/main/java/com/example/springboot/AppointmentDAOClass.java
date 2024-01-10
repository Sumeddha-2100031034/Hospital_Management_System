package com.example.springboot;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class AppointmentDAOClass implements AppointmentDAO{

	@Autowired
	private AppointmentRepository ar;
	
	@Override
	public void insertDetails(Appointment app) {
		// TODO Auto-generated method stub
		ar.save(app);
	}

}

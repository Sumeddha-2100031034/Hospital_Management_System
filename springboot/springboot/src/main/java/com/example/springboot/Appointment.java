package com.example.springboot;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name="appointment")
public class Appointment {
	
	public Appointment(String fn, String ln, int phone, String mail, String dob, String gender, String app_dt) {
		super();
		this.fn = fn;
		this.ln = ln;
		this.phone = phone;
		this.mail = mail;
		this.dob = dob;
		this.gender = gender;
		this.app_dt = app_dt;
	}
	String fn;
	String ln;
	@Id
	long phone;
	String mail;
	String dob;
	String gender;
	String app_dt;
	
	public Appointment() {
		
	}

	public String getFn() {
		return fn;
	}

	public void setFn(String fn) {
		this.fn = fn;
	}

	public String getLn() {
		return ln;
	}

	public void setLn(String ln) {
		this.ln = ln;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getApp_dt() {
		return app_dt;
	}

	public void setApp_dt(String app_dt) {
		this.app_dt = app_dt;
	}
}

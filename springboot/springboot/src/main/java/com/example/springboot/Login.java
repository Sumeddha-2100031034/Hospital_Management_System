package com.example.springboot;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Login {
	
	@Id
	String email;
	String pwd;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Login(String email, String pwd) {
		super();
		this.email = email;
		this.pwd = pwd;
	}
	
	public Login() {
		
	}
	public boolean authenticate(String username, String password) {
		// TODO Auto-generated method stub
		return false;
	}
	
}

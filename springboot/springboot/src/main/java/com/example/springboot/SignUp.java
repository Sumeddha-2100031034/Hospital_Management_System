package com.example.springboot;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="patients")
public class SignUp {
	
	@Id
	String email;
	String password;
	String confpassword;
	public SignUp(String email, String password, String confpassword) {
		super();
		this.email = email;
		this.password = password;
		this.confpassword = confpassword;
	}
	
	public SignUp() {
		
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfpassword() {
		return confpassword;
	}

	public void setConfpassword(String confpassword) {
		this.confpassword = confpassword;
	}

	
}

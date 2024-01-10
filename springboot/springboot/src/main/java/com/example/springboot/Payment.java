package com.example.springboot;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="payment")
public class Payment {
	@Id
	String name;
	String email;
	String gender;
	String address;
	int pin;
	String cardtype;
	String cardnumber;
	String cvv;
	String expiry;
	public Payment(String name, String email, String gender, String address, int pin, String cardtype,
			String cardnumber, String cvv, String expiry) {
		super();
		this.name = name;
		this.email = email;
		this.gender = gender;
		this.address = address;
		this.pin = pin;
		this.cardtype = cardtype;
		this.cardnumber = cardnumber;
		this.cvv = cvv;
		this.expiry = expiry;
	}
	
	public Payment() {
		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPin() {
		return pin;
	}

	public void setPin(int pin) {
		this.pin = pin;
	}

	public String getCardtype() {
		return cardtype;
	}

	public void setCardtype(String cardtype) {
		this.cardtype = cardtype;
	}

	public String getCardnumber() {
		return cardnumber;
	}

	public void setCardnumber(String cardnumber) {
		this.cardnumber = cardnumber;
	}

	public String getCvv() {
		return cvv;
	}

	public void setCvv(String cvv) {
		this.cvv = cvv;
	}

	public String getExpiry() {
		return expiry;
	}

	public void setExpiry(String expiry) {
		this.expiry = expiry;
	}
	
}

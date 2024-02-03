package com.customer.web.jdbc;

public class Student {
	private int id;
	private String firstName;
	private String lastName;
	private String email;
	private String street;
	private String address;
	private String city;
	private int phone;
	
	
	public Student() {
		
	}
	
	public Student(String firstName, String lastName, String email, String street, String address, String city,
			int phone) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.street = street;
		this.address = address;
		this.city = city;
		this.phone = phone;
	}

	public Student(int id, String firstName, String lastName, String email, String street, String address, String city,
			int phone) {
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.street = street;
		this.address = address;
		this.city = city;
		this.phone = phone;
	}

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getStreet() {
		return street;
	}
	

	public void setStreet(String street) {
		this.street = street;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getCity() {
		return city;
	}
	
	public void setCity(String city) {
		this.city = city;
	}
	
	public int getPhone() {
		return phone;
	}
	
	public void setPhone(int phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
				+ ", street=" + street + ", address=" + address + ", city=" + city + ", phone=" + phone + "]";
	}
	
	
	
}

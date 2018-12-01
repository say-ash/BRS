package com.model;

public class AdminBusDetails {
	 private String busName;
	 private int numberSeats;
	 private int busNumber;
	 private int busType;
	 
	 
	
	public int getBusNumber() {
		return busNumber;
	}
	public void setBusNumber(int busNumber) {
		this.busNumber = busNumber;
	}
	public int getBusType() {
		return busType;
	}
	public void setBusType(int busType) {
		this.busType = busType;
	}
	public String getBusName() {
		return busName;
	}
	public void setBusName(String busName) {
		this.busName = busName;
	}
	public int getNumberSeats() {
		return numberSeats;
	}
	public void setNumberSeats(int numberSeats) {
		this.numberSeats = numberSeats;
	}
	public AdminBusDetails() {
		super();
	}

	
}

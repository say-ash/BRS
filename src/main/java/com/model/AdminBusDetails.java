package com.model;

public class AdminBusDetails {
	 private String busName;
	 private int numberSeats;
	 private int busNumber;
	 private String busType;
	 
	 
	
	public int getBusNumber() {
		return busNumber;
	}
	public void setBusNumber(int busNumber) {
		this.busNumber = busNumber;
	}
	public String getBusType() {
		return busType;
	}
	public void setBusType(String string) {
		this.busType = string;
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

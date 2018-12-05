package com.model;

public class BusStatus {
	
	private int busNumber;
	private String busDate;
	private String busStatus;
	private String busName;
	private int busSeats;
	private String busType;
	
	
	
	public int getBusSeats() {
		return busSeats;
	}
	public void setBusSeats(int busSeats) {
		this.busSeats = busSeats;
	}
	public String getBusType() {
		return busType;
	}
	public void setBusType(String busType) {
		this.busType = busType;
	}
	public int getBusNumber() {
		return busNumber;
	}
	public void setBusNumber(int busNumber) {
		this.busNumber = busNumber;
	}
	public String getBusDate() {
		return busDate;
	}
	public void setBusDate(String busDate) {
		this.busDate = busDate;
	}
	public String getBusStatus() {
		return busStatus;
	}
	public void setBusStatus(String busStatus) {
		this.busStatus = busStatus;
	}
	public String getBusName() {
		return busName;
	}
	public void setBusName(String busName) {
		this.busName = busName;
	}

}

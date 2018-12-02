package com.model;

public class StopsDetails {
	
	private int busNumber;
	private String stopName;
	private int stopOrder;
	private String arivalTime;
	private String departureTime;
	private int distance;
	private int price;
	
	
	
	
	
	public StopsDetails() {
		super();
	}
	public int getBusNumber() {
		return busNumber;
	}
	public void setBusNumber(int busNumber) {
		this.busNumber = busNumber;
	}
	public String getStopName() {
		return stopName;
	}
	public void setStopName(String stopName) {
		this.stopName = stopName;
	}
	public int getStopOrder() {
		return stopOrder;
	}
	public void setStopOrder(int stopOrder) {
		this.stopOrder = stopOrder;
	}
	public String getArivalTime() {
		return arivalTime;
	}
	public void setArivalTime(String arivalTime) {
		this.arivalTime = arivalTime;
	}
	public String getDepartureTime() {
		return departureTime;
	}
	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}
	public int getDistance() {
		return distance;
	}
	public void setDistance(int distance) {
		this.distance = distance;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

}

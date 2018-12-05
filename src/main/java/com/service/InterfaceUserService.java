package com.service;



import java.util.List;


import com.model.AdminBusDetails;
import com.model.BusStatus;
import com.model.Login;
import com.model.StopsDetails;
import com.model.User;



public interface InterfaceUserService {

	
	public int saveUser(User r);
	public User validateUser(Login l);
	public int insertNewBus(AdminBusDetails br) ;

	public int AddNewStops(StopsDetails sd);

	public List<BusStatus> getDetails(int busNumber);
	public int saveData(BusStatus bs);
	public List<AdminBusDetails> viewBusDetails();


	
}

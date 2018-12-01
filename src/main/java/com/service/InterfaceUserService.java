package com.service;

import com.model.AdminBusDetails;
import com.model.Login;
import com.model.StopsDetails;
import com.model.User;


public interface InterfaceUserService {

	
	public int saveUser(User r);
	public User validateUser(Login l);
	public int AddBusDetails(AdminBusDetails br);
	public int UpdateBus(AdminBusDetails br);
	public int UpdateMoreDetails(AdminBusDetails br );
	public int insertNewBus(AdminBusDetails br) ;
	public int UpdateStops(StopsDetails sd);
	public int UpdateNewStops(StopsDetails sd);
	public int AddNewStops(StopsDetails sd);
	
}

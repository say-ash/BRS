package com.dao;

import java.util.List;


import com.model.AdminBusDetails;
import com.model.BusStatus;
import com.model.StopsDetails;


public interface InterfaceBusDetailsDao {

	public int insertNewBus(AdminBusDetails br) ;
	public int AddNewStops(StopsDetails sd);
	public List<BusStatus> getDetails(int busNumber);
	public int saveData(BusStatus bs);
	public List<AdminBusDetails> viewBusDetails();
	
}

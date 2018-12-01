package com.dao;

import com.model.AdminBusDetails;
import com.model.StopsDetails;


public interface InterfaceBusDetailsDao {

	public int AddBusDetails(AdminBusDetails br);
	public int UpdateBus(AdminBusDetails br);
	public int UpdateMoreDetails(AdminBusDetails br );
	public int insertNewBus(AdminBusDetails br) ;
	public int UpdateStops(StopsDetails sd);
	public int UpdateNewStops(StopsDetails sd);
	public int AddNewStops(StopsDetails sd);
	
}

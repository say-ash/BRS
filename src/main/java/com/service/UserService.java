package com.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.InterfaceBusDetailsDao;
import com.dao.InterfaceUserDao;
import com.model.AdminBusDetails;
import com.model.Login;
import com.model.StopsDetails;
import com.model.User;

@Service
public class UserService implements InterfaceUserService {

	@Autowired
	private InterfaceUserDao userDao;
	@Autowired
	private InterfaceBusDetailsDao AdminDao;
	
	public int saveUser(User r) {
		return userDao.saveUser(r);
	}
	
	public User validateUser(Login l) {
		return userDao.validateUser(l);
	}
	

	public int AddBusDetails(AdminBusDetails br) {
		// TODO Auto-generated method stub
		return AdminDao.AddBusDetails(br);
	}
	public int UpdateBus(AdminBusDetails br) {
		return AdminDao.UpdateBus(br);
	}
	public int UpdateMoreDetails(AdminBusDetails br ) {
		return AdminDao.UpdateMoreDetails(br);
	}
	public int insertNewBus(AdminBusDetails br) {
		return AdminDao.insertNewBus(br);
	
	
	}
	public int UpdateStops(StopsDetails sd) {
		return AdminDao.UpdateStops(sd);
	}

	public int UpdateNewStops(StopsDetails sd) {
		return AdminDao.UpdateNewStops(sd);
		
		
	}

	public int AddNewStops(StopsDetails sd) {
		return AdminDao.AddNewStops(sd);
		
		
	}

	
	

}

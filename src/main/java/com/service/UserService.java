package com.service;



import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.InterfaceBusDetailsDao;
import com.dao.InterfaceUserDao;
import com.model.AdminBusDetails;
import com.model.BusStatus;
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

	public int insertNewBus(AdminBusDetails br) {
		return AdminDao.insertNewBus(br);
	
	
	}
	

	public int AddNewStops(StopsDetails sd) {
		return AdminDao.AddNewStops(sd);
		
		
	}


	public List<BusStatus> getDetails(int busNumber) {
		// TODO Auto-generated method stub
		return AdminDao.getDetails(busNumber);
	}

	

	public int saveData(BusStatus bs) {
		// TODO Auto-generated method stub
		return AdminDao.saveData(bs);
	}



	public List<AdminBusDetails> viewBusDetails() {
		// TODO Auto-generated method stub
		return AdminDao.viewBusDetails();
	}

	
	

}

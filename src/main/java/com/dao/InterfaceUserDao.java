package com.dao;



import com.model.Login;
import com.model.User;

public interface InterfaceUserDao {
	
	public int saveUser(User r);

	public User validateUser(Login l);

}

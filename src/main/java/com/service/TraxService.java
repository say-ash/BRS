package com.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.InterfaceTraxDao;
import com.model.SearchResult;
import com.model.User;

@Service
public class TraxService implements InterfaceTraxService {
	@Autowired
	private InterfaceTraxDao traxDao;

	public void BookTicket() {
		// TODO Auto-generated method stub
		
	}

	public List<User> UserDetails(User u) {
		// TODO Auto-generated method stub 
		return traxDao.UserDetails(u);
	}

	public List<SearchResult> BookDetails( ) {
		// TODO Auto-generated method stub
		return traxDao.BookDetails();
	}

}

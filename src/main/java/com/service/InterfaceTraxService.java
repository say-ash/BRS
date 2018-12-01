package com.service;

import java.util.List;

import com.model.SearchResult;
import com.model.User;


public interface InterfaceTraxService {
	
	public void BookTicket();

	public List<User> UserDetails(User r);

	public List<SearchResult> BookDetails();

}

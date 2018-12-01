package com.dao;

import java.util.List;

import com.model.SearchResult;
import com.model.User;

public interface InterfaceTraxDao {

	List<User> UserDetails(User r);

	List<SearchResult> BookDetails();

}

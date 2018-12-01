package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.InterfaceSearchDao;
import com.model.BusSearch;
import com.model.SearchResult;

@Service
public class SearchService implements InterfaceSearchService{

	@Autowired
	private InterfaceSearchDao searchDao;
	
	public Object searchBus(BusSearch b) {
		return searchDao.searchBus(b);
	
	}

	
	

	public Object bookBus(List<SearchResult> list) {
		return searchDao.bookBus();
	}
	
	
}

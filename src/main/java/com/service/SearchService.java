package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.InterfaceSearchDao;
import com.model.BusPassenger;
import com.model.BusSearch;
import com.model.SearchResult;

@Service
public class SearchService implements InterfaceSearchService{

	@Autowired
	private InterfaceSearchDao searchDao;
	
	public Object searchBus(BusSearch b) {
		return searchDao.searchBus(b);
	
	}


	public Object bookBus(List<SearchResult> list,BusPassenger bp) {
		return searchDao.bookBus(list,bp);
	}


	public int getUId(String email) {
		
		return searchDao.getUId(email);
	}


	public int add(BusPassenger bp, int bid) {
		return searchDao.add(bp,bid);
	
		
	}


	public int book(String s, int bid, int uid) {
		return searchDao.book(s,bid,uid);
	
	}
	
	
}

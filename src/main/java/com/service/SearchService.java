package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.InterfaceSearchDao;
import com.model.BookDetails;
import com.model.Booking;
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


	public int getUId(String email) {
		
		return searchDao.getUId(email);
	}


	public int add(BusPassenger bp, int bid) {
		return searchDao.add(bp,bid);
	
		
	}


	public List<Integer> getPId(int uid) {
		return searchDao.getPId(uid);
	}


	public int insertBookings(Booking booking) {
		return searchDao.insertBookings(booking);
	}


	public List<Integer> getSeatNO(int id) {
		return searchDao.getSeatNO(id);
	}


	public List<BookDetails> viewBus(List<SearchResult> list, Integer integer) {
		return searchDao.viewBus(list,integer);
	}



	
	
}

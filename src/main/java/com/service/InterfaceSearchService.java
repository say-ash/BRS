package com.service;

import java.util.List;

import com.model.BookDetails;
import com.model.Booking;
import com.model.BusPassenger;
import com.model.BusSearch;
import com.model.SearchResult;

public interface InterfaceSearchService {

	Object searchBus(BusSearch b);

	int getUId(String email);

	int add(BusPassenger bp, int bid);

	List<Integer> getPId(int uid);

	int insertBookings(Booking booking);

	List<Integer> getSeatNO(int id);

	List<BookDetails> viewBus(List<SearchResult> list, Integer integer);

}

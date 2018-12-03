package com.dao;

import java.util.List;

import com.model.BusPassenger;
import com.model.BusSearch;
import com.model.SearchResult;

public interface InterfaceSearchDao {

	Object searchBus(BusSearch b);

	Object bookBus(List<SearchResult> list, BusPassenger bp);

	int getUId(String email);

	int add(BusPassenger bp, int bid);

	int book(String s, int bid, int uid);

	
}

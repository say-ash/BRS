package com.service;

import java.util.List;

import com.model.BusSearch;
import com.model.SearchResult;

public interface InterfaceSearchService {

	Object searchBus(BusSearch b);

	Object bookBus(List<SearchResult> list);

}

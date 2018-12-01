package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.BookDetails;
import com.model.BusSearch;
import com.model.SearchResult;
import com.service.InterfaceSearchService;


@Controller
public class SearchController {


	@Autowired
	private InterfaceSearchService searchService;
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/usersearch")
	/**
	 * Searching the bus from home page
	 * @param req
	 * @param res
	 * @param ses
	 * @return
	 * @throws Exception
	 */
	public ModelAndView search(@ModelAttribute BusSearch b, HttpSession session) {
	
		System.out.println(b.getSource()+"\n"+b.getDestination()+"\n"+b.getDoj()+"\n"+b.getDor());
		ModelAndView mv = new ModelAndView("userbus");
		
		List<SearchResult> list = (List<SearchResult>) searchService.searchBus(b);
		System.out.println(list.get(0).getSource());
		session.setAttribute("bussearch", list);
		mv.addObject("msg",list);
		mv.addObject("msg1",list.get(0).getSource());
		mv.addObject("msg2",list.get(0).getDestination());
		return mv;
		
	}
	
	
	@RequestMapping("/book")
	public ModelAndView book(HttpSession session) {
		
		List<SearchResult> list = (List<SearchResult>) session.getAttribute("bussearch");
		List<BookDetails> list1 = (List<BookDetails>) searchService.bookBus(list);
		return null;
		
	}

	
}

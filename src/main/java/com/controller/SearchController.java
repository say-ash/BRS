package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.BookDetails;
import com.model.BusPassenger;
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
		session.setAttribute("bussearch", list);
		mv.addObject("msg",list);
		mv.addObject("msg1",list.get(0).getSource());
		mv.addObject("msg2",list.get(0).getDestination());
		return mv;
		
	}
	
	@PostMapping(value= "/bookseat")
	public ModelAndView bookseat(HttpServletRequest req, HttpSession session /*@ModelAttribute BusPassenger bp*/) {
		
		
		int bid = Integer.parseInt(req.getParameter("id"));
		String[] seatno = (String[]) session.getAttribute("seatno");
		int seatLength = seatno.length;
		session.setAttribute("bid", bid);
		session.setAttribute("seatno", seatno);
		String email = (String) session.getAttribute("email");
		int uid = searchService.getUId(email);
		session.setAttribute("uid", uid);
		for(String s: seatno) {
			System.out.println(s);
		}
		
		return new ModelAndView("addpassenger","seatLength",seatLength);
		
	}
	
	@PostMapping(value= "/add")
	public ModelAndView addPassenger(@ModelAttribute BusPassenger bp, HttpSession session) {
		
		ModelAndView mav = new ModelAndView("addpassenger");
		int bid = (Integer) session.getAttribute("bid");
		int i = searchService.add(bp,bid);
		mav.addObject("successfull","Passenger added succefully");
		if(i > 0) {
			
			return mav;
			
		}
		return null;
		
		
	}
	
	/*@PostMapping(value= "/confirmseat")
	public ModelAndView confirmseat(HttpServletRequest req, HttpSession session, @ModelAttribute BusPassenger bp) {
		int uid = (Integer) session.getAttribute("uid");
		String[] seatno = (String[]) session.getAttribute("seatno");
		int bid = (Integer) session.getAttribute("bid");
		bp.setPuid(uid);
		
		for(String s:seatno) {
			searchService.book(s);
		}
		List<SearchResult> list = (List<SearchResult>) session.getAttribute("bussearch");
		
		return new ModelAndView("confirmseat");
		
	}*/
	/*@RequestMapping("/book")
	public ModelAndView book(HttpSession session, @ModelAttribute BusPassenger bp) {
		
		List<SearchResult> list = (List<SearchResult>) session.getAttribute("bussearch");
		List<BookDetails> list1 = (List<BookDetails>) searchService.bookBus(list, bp);
		return null;
		
	}*/


}

package com.controller;

import java.util.ArrayList;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.BookDetails;
import com.model.Booking;
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
		try {
			ModelAndView mv = new ModelAndView("userbus");
			List<SearchResult> list = (List<SearchResult>) searchService.searchBus(b);
			session.setAttribute("bussearch", list);
			mv.addObject("msg",list);
			mv.addObject("msg1",list.get(0).getSource());
			mv.addObject("msg2",list.get(0).getDestination());
			return mv;
		} catch (Exception e) {
			return new ModelAndView("error");
		}
	
		
	}
	
	@PostMapping(value= "/bookseat")
	synchronized public ModelAndView bookseat(HttpServletRequest req, HttpSession session) {
		
		try {
			ModelAndView mav = new ModelAndView("addpassenger");
			int bId = Integer.parseInt(req.getParameter("id"));
			String[] seatNo = (String[]) req.getParameterValues("seatno");
			session.setAttribute("seatno", seatNo);
			int seatLength = seatNo.length;
			session.setAttribute("bid", bId);
			String email = (String) session.getAttribute("email");
			int uId = searchService.getUId(email);
			session.setAttribute("uid", uId);
			session.setAttribute("l", seatLength);
			mav.addObject("length",seatLength);
			return mav;
		} catch (NumberFormatException e) {
			return new ModelAndView("error");
		}
		
	}
	
	
	ArrayList<Integer> list= new ArrayList<Integer>();
	@PostMapping(value= "/add")
	synchronized public ModelAndView addPassenger(HttpServletRequest req, @ModelAttribute BusPassenger bp, HttpSession session) {
		
	
			String l1 = req.getParameter("l");
			int l=Integer.parseInt(l1);	 
			try {
			do{
				l = l-1;
			
			ModelAndView mav = new ModelAndView("addpassenger");
			mav.addObject("length", l);		
			int uid = (Integer) session.getAttribute("uid");
			searchService.add(bp,uid);
			mav.addObject("successfull","Passenger added succefully");
			return mav;
			} while(l>0);
		} catch (NumberFormatException e) {
			return new ModelAndView("error");
		}	
		
	}
	
	@PostMapping(value= "/confirmseat")
	synchronized public ModelAndView confirmseat(HttpServletRequest req, HttpSession session) {
		
		String[] seatNo = (String[]) session.getAttribute("seatno");
		int length = (Integer) session.getAttribute("l");
		int uId = (Integer) session.getAttribute("uid");
		int bId = (Integer) session.getAttribute("bid");
		try {
			Booking b[] = new Booking[length];
			List<Integer> list = searchService.getPId(uId);
			session.setAttribute("pList", list);
			for(int i=0; i< length ; i++ ) {
				b[i] = new Booking();
				b[i].setBdId(bId);
				b[i].setpId(list.get(i));
				b[i].setSeatNo(seatNo[i]);
			}
				
			int j = 0;
			for(int i=0; i<length ; i++ ) {
				j = searchService.insertBookings(b[i]);
			}
			if(j>0)
				return new ModelAndView("checkout");
			else
			return new ModelAndView("error");
		} catch (Exception e) {
			return new ModelAndView("error");
		}
	}
	@PostMapping("/viewbook")
	synchronized public ModelAndView viewbook(HttpServletRequest req,HttpSession session) {
		
		try {
			@SuppressWarnings("unchecked")
			List<SearchResult> list = (List<SearchResult>) session.getAttribute("bussearch");
			ModelAndView mav = new ModelAndView("checkout");
			int length = (Integer) session.getAttribute("l");
			@SuppressWarnings("unchecked")
			List<Integer> pList = (List<Integer>) session.getAttribute("pList");
			List<BookDetails> bookList = new ArrayList<BookDetails>(length);
			for(int i=0; i<length ; i++ ) {
				 bookList.addAll(searchService.viewBus(list,pList.get(i)));
			}	
			mav.addObject("booklist",bookList);
			return mav;
		} catch (Exception e) {

			return new ModelAndView("error");
		}
		
	}

}

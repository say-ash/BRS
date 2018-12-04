package com.controller;

import java.util.ArrayList;
import java.util.Arrays;
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
		
		ModelAndView mav = new ModelAndView("addpassenger");
		System.out.println("in bookseat controller");
		int bId = Integer.parseInt(req.getParameter("id"));
		System.out.println("Bus id: "+bId);
		String[] seatNo = (String[]) req.getParameterValues("seatno");
		session.setAttribute("seatno", seatNo);
		int seatLength = seatNo.length;
		System.out.println("No.of seats: "+seatLength);
		System.out.println("Seat nos: ");
		for(String s: seatNo) {
			System.out.println(s);
		}
		session.setAttribute("bid", bId);
		/*session.setAttribute("length", seatLength);*/
		String email = (String) session.getAttribute("email");
		System.out.println("Email id: "+email);
		int uId = searchService.getUId(email);
		System.out.println("User id: "+uId);
		session.setAttribute("uid", uId);
		session.setAttribute("l", seatLength);
		mav.addObject("length",seatLength);
		return mav;
		
	}
	
	
	ArrayList<Integer> list= new ArrayList<Integer>();
	@PostMapping(value= "/add")
	public ModelAndView addPassenger(HttpServletRequest req, @ModelAttribute BusPassenger bp, HttpSession session) {
		
		String l1 = req.getParameter("l");
		System.out.println("Length: "+l1);
		int l=Integer.parseInt(l1);	 
		do{
			l = l-1;
			System.out.println("l:"+l);
		ModelAndView mav = new ModelAndView("addpassenger");
		mav.addObject("length", l);		
		int uid = (Integer) session.getAttribute("uid");
		System.out.println("UID: "+uid);
		int i = searchService.add(bp,uid);
		mav.addObject("successfull","Passenger added succefully");
		return mav;
		} while(l>0);
		
		
	}
	
	@PostMapping(value= "/confirmseat")
	public ModelAndView confirmseat(HttpServletRequest req, HttpSession session) {
		
		String[] seatNo = (String[]) session.getAttribute("seatno");
		int length = (Integer) session.getAttribute("l");
		int uId = (Integer) session.getAttribute("uid");
		int bId = (Integer) session.getAttribute("bid");
		Booking b[] = new Booking[length];
		System.out.println("BID: "+bId);
		List<Integer> list = searchService.getPId(uId);
		System.out.println("PID List size: "+list.size());
		System.out.println(list.get(0));
	
		for(int i=0; i< length ; i++ ) {
			b[i] = new Booking();
			b[i].setBdId(bId);
			b[i].setpId(list.get(i));
			b[i].setSeatNo(seatNo[i]);
		}
		for(int i=0;i<length;i++) {
			System.out.println(b[i]);
			
		}
			
		int j = 0;
		for(int i=0; i<length ; i++ ) {
		
			j = searchService.insertBookings(b[i]);
		}
		if(j>0)
			return new ModelAndView("done");
		else
			return new ModelAndView("done");
		
	}
	/*@RequestMapping("/viewbook")
	public ModelAndView book(HttpSession session, @ModelAttribute BusPassenger bp) {
		
		List<SearchResult> list = (List<SearchResult>) session.getAttribute("bussearch");
		List<BookDetails> list1 = (List<BookDetails>) searchService.bookBus(list, bp);
		return null;
		
	}*/


}

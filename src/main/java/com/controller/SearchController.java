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
		
		ModelAndView mav = new ModelAndView("addpassenger");
		System.out.println("in bookseat controller");
		int bid = Integer.parseInt(req.getParameter("id"));
		System.out.println(bid);
		String[] seatno = (String[]) req.getParameterValues("seatno");
		session.setAttribute("seatno", seatno);
		String seatLength = String.valueOf(seatno.length);
		System.out.println(seatLength);
		for(String s: seatno) {
			System.out.println(s);
		}
		session.setAttribute("bid", bid);
		/*session.setAttribute("length", seatLength);*/
		String email = (String) session.getAttribute("email");
		System.out.println(email);
		int uid = searchService.getUId(email);
		System.out.println(uid);
		session.setAttribute("uid", uid);
		mav.addObject("length",seatLength);
		return mav;
		
	}
	
	@PostMapping(value= "/add")
	public ModelAndView addPassenger(HttpServletRequest req, @ModelAttribute BusPassenger bp, HttpSession session) {
		/*
		String length = (String) session.getAttribute("length");
		*/
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
		System.out.println("i: "+i);
		mav.addObject("successfull","Passenger added succefully");
		return mav;
	} while(l>0);
		
			}
	
	@PostMapping(value= "/confirmseat")
	public ModelAndView confirmseat(HttpServletRequest req, HttpSession session) {
		
		System.out.println("ji inside g seat");
		int i = 0;
		int uid = (Integer) session.getAttribute("uid");
		System.out.println("uid"+uid);
		String[] seatno = (String[]) session.getAttribute("seatno");
		int bid = (Integer) session.getAttribute("bid");
		System.out.println("bid" +bid);
		/*bp.setPuid(uid);*/
		
		for(String s:seatno) {
			System.out.println(s);
			i = searchService.book(s,bid,uid);
			System.out.println("iteration"+i);
		}

		if(i>0) {
			return new ModelAndView("done");
		}
		/*List<SearchResult> list = (List<SearchResult>) session.getAttribute("bussearch");*/
		else
		return new ModelAndView("confirmseat");
		
	}
	/*@RequestMapping("/book")
	public ModelAndView book(HttpSession session, @ModelAttribute BusPassenger bp) {
		
		List<SearchResult> list = (List<SearchResult>) session.getAttribute("bussearch");
		List<BookDetails> list1 = (List<BookDetails>) searchService.bookBus(list, bp);
		return null;
		
	}*/


}

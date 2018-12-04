package com.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import org.springframework.web.servlet.ModelAndView;

import com.model.Login;

import com.service.InterfaceTraxService;
 


@Controller
public class TraxController {
	
	
	
	@SuppressWarnings("unused")
	@Autowired
		private InterfaceTraxService userservice;
	 
	 @PostMapping("/bookSeat")

		/**
		 * To Book the ticket
		 * @param req
		 * @param res
		 * @param ses
		 * @return
		 * @throws Exception
		 */
	   public  ModelAndView addMoreStopsDetails(@SessionAttribute Login l) {
		
		 ModelAndView mv = new ModelAndView("booking");
		mv.addObject("login",l);
		mv.addObject("msg");
		return  mv; 
	   }
	
	
	

}

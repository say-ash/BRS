package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.service.InterfaceSearchService;

@Controller
public class MappingController {

	
	@Autowired
	private InterfaceSearchService searchService;
	
	@RequestMapping(value = "/userhome")
	 public ModelAndView userHome() {

	     return new ModelAndView("userhome");
	}
	
	
	@RequestMapping(value = "/logout")
	 public ModelAndView logout(HttpSession session) {
			
		 session.invalidate();
	     return new ModelAndView("login-signup");
	}

	
	@RequestMapping(value = "/first")
	 public ModelAndView welcome() {
	        return new ModelAndView("login-signup");
	}

	//Mapping of about.jsp
	@RequestMapping("/about")
	public ModelAndView redirect()
	{
		return new ModelAndView("about");
	}
	
	//Mapping of contact.jsp
	@RequestMapping("/contact")
	public ModelAndView redirect1()
	{
		return new ModelAndView("contact");
	}
	
	//Mapping of faq.jsp
	@RequestMapping("/faq")
	public ModelAndView redirect2()
	{
		return new ModelAndView("faq");
	}	
	
	//Mapping of terms.jsp
	@RequestMapping("/terms")
	public ModelAndView redirect3()
	{
		return new ModelAndView("terms");
	}	
	
	//Mapping of busseat.jsp
	@RequestMapping("/seat/{id2}")
	public ModelAndView redirect4(@PathVariable("id2") int id)
	{

		List<Integer> list = searchService.getSeatNO(id);	
		ModelAndView mv = new ModelAndView("userbusseat");
		mv.addObject("bid",id);
		mv.addObject("msg",list);
		return mv;
		
	}	
	
	//Mapping of userbusseat.jsp
	@RequestMapping("/userseat")
	public ModelAndView redirect5()
	{
		return new ModelAndView("userhome");
	}
	
}

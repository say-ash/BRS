package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.BusSearch;

@Controller
public class MappingController {

	
	
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

		ModelAndView mv = new ModelAndView("userbusseat");
		mv.addObject("bid",id);
		return mv;
		
	}	
	
	//Mapping of userbusseat.jsp
	@RequestMapping("/userseat")
	public ModelAndView redirect5()
	{
		return new ModelAndView("userhome");
	}
	
}

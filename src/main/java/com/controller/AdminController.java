package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.AdminBusDetails;
import com.model.Login;
import com.model.StopsDetails;
import com.service.InterfaceUserService;



@Controller
public class AdminController {
	
	
	
	 @Autowired
		private InterfaceUserService userservice;

		@RequestMapping(value = "/first1")
		 public ModelAndView welcome1() {
		        return new ModelAndView("adminlogin-signup");
	 }
	 @PostMapping("/dologin")
	   public String doLogin(@ModelAttribute("admin") Login admin, Model model) {

	      // Implement your business logic
	      if (admin.getEmailId().equals("admin@gmail.com") && admin.getPassword().equals("Admin@123")) {
	               
	      } else {
	         model.addAttribute("message", "Login failed. Try again.");
	         return "index";
	      }
	      return "adminhome";
	   }
	 
	 @PostMapping("/addDetails")
	   public  ModelAndView addDetails(@ModelAttribute AdminBusDetails br, Model model) {

	      // Implement your business logic
		 int i = userservice.UpdateBus(br);
		 if(br.getBusNumber() == i) {
			 return new ModelAndView("UpdateBus");
		 }
		return new ModelAndView("UpdateBus"); 
	   }
	
	 @PostMapping("/addMoreDetails")
	   public  ModelAndView addMoreDetails(@ModelAttribute AdminBusDetails br, Model model) {

	      // Implement your business logic
		 int i = userservice.UpdateBus(br);
		 if(br.getBusNumber()==i) {
			userservice.AddBusDetails(br);
		 }
		 else {
			 userservice.insertNewBus(br);
		 }
		return new ModelAndView("successfull"); 
	   }
	 @PostMapping("/addMoreStops")
	   public  ModelAndView addMoreStopsDetails(@ModelAttribute StopsDetails sd, Model model) {

	      // Implement your business logic
		 int i = userservice.UpdateStops(sd);
		 if(sd.getBusNumber()==i) {
			 userservice.UpdateNewStops(sd);
		 }
		 else {
			 userservice.AddNewStops(sd);
		 }
		 
		return new ModelAndView("successfull"); 
	   }
	 

}

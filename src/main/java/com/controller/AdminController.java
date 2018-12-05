package com.controller;

import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.model.AdminBusDetails;
import com.model.BusStatus;
import com.model.Login;
import com.model.StopsDetails;
import com.service.InterfaceUserService;



@Controller
public class AdminController {



	@Autowired
	private InterfaceUserService userservice;

	
	@PostMapping("/dologin")
	public ModelAndView doLogin(@ModelAttribute("admin") Login admin, Model model) {

		// Implement your business logic
		if (admin.getEmailId().equals("admin@gmail.com") && admin.getPassword().equals("Admin@123")) {
			return new ModelAndView("adminhome" , "check","inserted");       
		} else {
			model.addAttribute("message", "Login failed. Try again.");
			return new ModelAndView("adminlogin-signup");
		}

	}
	@GetMapping("/insertNewBus")
	public ModelAndView insert() {


		return new ModelAndView("adminhome","insert","inserted");

	}

	@GetMapping("/insertNewStop")
	public ModelAndView insert1() {


		return new ModelAndView("adminhome","busstop","inserted");

	}

	@GetMapping("/viewDetails")
	public ModelAndView viewDetails() {

		List<AdminBusDetails> viewList = userservice.viewBusDetails();
		
		ModelAndView mv= new ModelAndView("adminhome" , "view","inserted");
		mv.addObject("list", viewList);



		return mv;

	}


	@PostMapping("/insertBus")
	public  ModelAndView addMoreDetails(@ModelAttribute AdminBusDetails br, Model model) {
		
		
			int i1=userservice.insertNewBus(br);
			if(i1 == 0) {
				return new ModelAndView("error"); 
			}
			else {
				return new ModelAndView("adminhome","done","inserted");
			}
		
	}

	@PostMapping("/insertStop")
	public  ModelAndView addMoreStopsDetails(@ModelAttribute StopsDetails sd) {

		userservice.AddNewStops(sd);
		return new ModelAndView("adminhome","done","inserted"); 
	}

	@RequestMapping(value="/updatebus/{busNumber}")    
	public ModelAndView edit(@PathVariable int busNumber){  
		List<BusStatus> status=userservice.getDetails(busNumber); 
		ModelAndView mv = new ModelAndView("busdetailsform");

		mv.addObject("list",status);
		return mv;
	}    

	@PostMapping("/save")    
	public ModelAndView save(@ModelAttribute BusStatus bs){  
	int i=userservice.saveData(bs); 
		
		if(i>0) {
			return new ModelAndView("adminhome","done","inserted");
		}
		else {
			return new ModelAndView("error");
		}
	
	
	}
}

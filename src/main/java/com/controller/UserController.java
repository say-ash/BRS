package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.EncryptPassword;
import com.model.Login;
import com.model.User;
import com.service.InterfaceUserService;

/**
 * This is to mention it is the Controller 
 *
 */

@Controller
public class UserController {
	
	@Autowired
	private InterfaceUserService userService;
	EncryptPassword ep  = new EncryptPassword();
	@RequestMapping(value = "/register", method=RequestMethod.POST)
	//It will mapped while registering as a new User
	public ModelAndView saveUser(@ModelAttribute User r) {

		try {
			r.setPassword(ep.hashPassword(r.getPassword()));
			System.out.println(r.getPassword());
			ModelAndView mv= new ModelAndView("login-signup");
			int i = userService.saveUser(r);
			
			if(i>0)
				return mv;
			else 
				return new ModelAndView("error");
		} catch (Exception e) {
			return new ModelAndView("error");
		}
	}
	
	
	/**
	   * @param login : Accepts object of login model which contains username and password entered by user
	   * @return mav : returns ModelAndView object
	   */
	  @RequestMapping(value = "/login", method = RequestMethod.POST)
	  public ModelAndView loginProcess(HttpSession session,@ModelAttribute("login") Login login) {
	    try {
			ModelAndView mav = null;
			User user = userService.validateUser(login);
			if (null != user) {
			    mav = new ModelAndView("userhome");
			    String email = login.getEmailId();
			    session.setAttribute("email", email);	   
			    
			} else {
			    mav = new ModelAndView("login-signup");
			    mav.addObject("msg1", "Username or Password is wrong!!");
			}
			return mav;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return new ModelAndView("error");
		}
	  }
	
}
		
	



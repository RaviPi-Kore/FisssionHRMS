package com.fission.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fission.dao.UserDAO;

/**
 * @author SivaLabs
 * 
 */

@Controller
public class LoginControllers {
	@Autowired
	UserDAO userDAO;

	@RequestMapping("/home")
	public String home() {
		return "home";
	}

}

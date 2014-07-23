package com.fission.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.fission.beans.UserLogin;
import com.fission.dao.UserDAO;

@Controller
@RequestMapping("/login")
public class UserLoginController {
	private final static Logger LOGGER = Logger.getLogger(UserLoginController.class);

	private UserLogin userLogin;

	@Autowired
	UserDAO userDAO;

	/**
	 * 
	 * @first time login request
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView init() {
		userLogin = new UserLogin();
		return new ModelAndView("login", "loginDetails", userLogin);
	}

	/**
	 * 
	 * @param userLogin
	 * @param bindingResult
	 * @param request
	 * @param response
	 * @return navaigate adminhome based on login details
	 */
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("loginDetails") UserLogin userLogin, BindingResult bindingResult, HttpServletRequest request,
			HttpServletResponse response) {
		LOGGER.info("In post login and username: " + userLogin.getUsername() + " and password: " + userLogin.getPassword());
		try {
			if (userDAO.checklogin(userLogin.getUsername(), userLogin.getPassword())) {
				request.getSession().setAttribute("user", userLogin);
				RedirectView redirectView = new RedirectView("home.do", true);
				return new ModelAndView(redirectView);
			} else {
				bindingResult.addError(new ObjectError("Invalid", "Invalid credentials."));
				return new ModelAndView("login", "loginDetails", userLogin);
			}
		} catch (Exception e) {
			System.out.println("Exception in LoginController " + e.getMessage());
			e.printStackTrace();
			return new ModelAndView("login", "loginDetails", userLogin);
		}
	}

}

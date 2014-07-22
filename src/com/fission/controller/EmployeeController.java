/**
 * 
 */
package com.fission.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.sun.org.apache.xalan.internal.xsltc.compiler.sym;

/**
 * @author Fission
 * 
 */
@Controller
public class EmployeeController {

	@RequestMapping(value = "/getEmployeeList", method = RequestMethod.GET)
	public String employeeList() {
		System.out.println("helol");
		return new Gson().toJson("");
	}

	@RequestMapping(value = "/addEmployee")
	public String addEmployee() {
		return "addEmployee";
	}
}

package com.niit.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.model.Customer;
import com.niit.service.CustomerService;
@Controller
public class RegisterController {

@Autowired	
private	CustomerService customerService;
@RequestMapping("/register")
public String registerCustomer(Model model) {
	Customer customer=new Customer();
	model.addAttribute("customer", customer);
	return "registerCustomer";
	
}
@RequestMapping(value="/register", method=RequestMethod.POST)
public String registerCustomerData(@ModelAttribute("customer") Customer customer) {
	
	boolean flag=customerService.addCustomer(customer);
	if (flag==true) return"index";
	else return "registerCustomer";
	
}

}
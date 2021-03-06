package com.niit.controller;

import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.Customer;
import com.niit.service.CustomerService;

public class CartController {
	
	private CustomerService customerService;
	
	public String getCart(@AuthenticationPrincipal User activeUser ) {
		
		Customer customer=customerService.getCustomerByUsername(activeUser.getUsername());
		
		int cartId= customer.getCart().getCartId();
		
		return "redirect:/customer/cart/" + cartId;
	}
	
	 @RequestMapping("/{cartId}")
	    public String getCartRedirect(@PathVariable (value = "cartId") int cartId, Model model){
	        model.addAttribute("cartId", cartId);

	        return "cart";
	    }

}

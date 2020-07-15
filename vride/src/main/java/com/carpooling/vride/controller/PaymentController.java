package com.carpooling.vride.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaymentController {
@RequestMapping("/payment")	
public String pay() 
{
	return "payment";
}
@RequestMapping("/{empid}/pay")	
public String payment() 
{
	return "payment";
}
}

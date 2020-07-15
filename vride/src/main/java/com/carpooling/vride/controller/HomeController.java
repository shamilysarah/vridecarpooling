package com.carpooling.vride.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class HomeController {
	@Autowired  
    JdbcTemplate jdbc;
	@RequestMapping("/")
	public String home()
	{
		return "mainhome";
	}
	

}

package com.carpooling.vride.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.carpooling.vride.model.Provider;
import com.carpooling.vride.model.Rider;
import com.carpooling.vride.service.RiderService;
@Controller
public class RiderController {
	@Autowired
	public RiderService riderService;
	 @RequestMapping(value = "/riderDetails", method = RequestMethod.GET)
		  public ModelAndView showDetails(HttpServletRequest request, HttpServletResponse response) {
		    ModelAndView mav1 = new ModelAndView("riderdetails");
		    mav1.addObject("rider", new Rider());
		    return mav1;
		  }
		  @RequestMapping(value = "/riddetailProcess", method = RequestMethod.POST)
		  public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
		  @ModelAttribute("rider") Rider rider) {
			//  ModelAndView mav=null;
		    riderService.input(rider);
		//  mav=new ModelAndView("riderdetails");
		//  return new ModelAndView("welcome", "firstname", user.getFirstname());
		//  mav.addObject("eid", rider.getEmpid());
		  return new ModelAndView("riderdetails");
		  //return mav;
	  }
		  @RequestMapping(value="/riderlist",method = RequestMethod.GET)
		   public ModelAndView riderlist() {
		   ModelAndView model = new ModelAndView("riderslist");
		   List<Rider> riderList = riderService.getAllRiders();
		   model.addObject("rl", riderList);	   
		   return model;
		 }
}

package com.carpooling.vride.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.awt.print.Pageable;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import com.carpooling.vride.dao.ProviderRepository;
import com.carpooling.vride.exception.InvalidCarException;
import com.carpooling.vride.model.Provider;
import com.carpooling.vride.service.ProviderService;

@Controller
public class ProviderController {
	
	  @Autowired
	  public ProviderService providerService;
	  @Autowired
		ProviderRepository providerRepository;
	  @RequestMapping(value = "/providerDetails", method = RequestMethod.GET)
	  public ModelAndView showDetails(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("providerdetails");
	    mav.addObject("provider", new Provider());
	    return mav;
	  }
	  @RequestMapping(value = "/detailProcess", method = RequestMethod.POST)
	  public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
	  @ModelAttribute("provider") Provider provider) {
	  providerService.upload(provider);
	 // return new ModelAndView("welcome", "firstname", user.getFirstname());
	  return new ModelAndView("mainhome");
	  }
	  @RequestMapping(value="/rider",method = RequestMethod.GET)
	   public ModelAndView rider() {
	   ModelAndView model = new ModelAndView("rider");
	   List<Provider> providerList = providerService.getAllProviders();
	   model.addObject("providerList", providerList);	   
	   return model;
	 }
	   
	   // int booked=0;
	   @RequestMapping(value="/choosedcar/{empid}",method=RequestMethod.GET)
	   public ModelAndView getUser(@PathVariable("empid") int empid){
	   // int booked=0;
	   ModelAndView model = new ModelAndView("choosedcar");
	   Provider c = providerService.findById(empid);	   
	   if(c.getVacancy()!=0)
	   {	  
	   int vac=c.getVacancy()-1;
	   //booked++;
	   c.setVacancy(vac);
	   //int amt=c.getAmount()/booked;
	   //c.setAmount(amt);
	   providerRepository.save(c);
	   }
	   else
		   throw new InvalidCarException();
	   model.addObject("c", c);	   
	   return model;
	 }
	   @RequestMapping(value="/viewrides" ,method = RequestMethod.GET)
	   public ModelAndView viewRides() {
	   ModelAndView model = new ModelAndView("viewrides");
	   List<Provider> providerList = providerService.getAllProviders();
	   model.addObject("providerList", providerList);	   
	   return model;
	 }
	   @RequestMapping(value="/editordelete" ,method = RequestMethod.GET)
	   public ModelAndView editRides() {
	   ModelAndView model = new ModelAndView("editordelete");
	   List<Provider> providerList = providerService.getAllProviders();
	   model.addObject("providerList", providerList);	   
	   return model;
	 }
	   @RequestMapping(value="/editordelete/{empid}", method=RequestMethod.GET)
	   public ModelAndView delete(@PathVariable("empid") int empid) {
	    providerService.deleteProvider(empid);
	    
	    return new ModelAndView("redirect:/editordelete");
	   }
	   @RequestMapping(value="/update/{empid}", method=RequestMethod.GET)
	   public ModelAndView editArticle(@PathVariable("empid") int empid) {
	    ModelAndView model = new ModelAndView();
	    
	    Provider provider = providerService.getProviderById(empid);
	    model.addObject("pu", provider);
	    model.setViewName("updatepage");	    
	    return model;
	   }
	   @RequestMapping(value="/saveProv",method={RequestMethod.GET,RequestMethod.POST})
	  // @ResponseStatus(value=HttpStatus.OK)
	  // @ResponseBody
	   public ModelAndView saveprov(@ModelAttribute("pu") Provider provider) {
	    providerService.saveOrUpdate(provider);   
	    return new ModelAndView("redirect:/editordelete");
	   }	   
	   
}


package com.carpooling.vride.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.carpooling.vride.model.*;
import com.carpooling.vride.service.UserService;
@Controller
public class LoginController {
  @Autowired
  public UserService userService;
  @RequestMapping(value = "/login", method = RequestMethod.GET)
  public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView mav = new ModelAndView("login");
    mav.addObject("login", new Login());
    return mav;
  }
  @RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
  public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
  @ModelAttribute("login") Login login) {
  ModelAndView mav = null;
  if (null !=userService.validateUser(login)) {
  mav = new ModelAndView("employee");
  mav.addObject("un", login.getUsername());
  } else {
  mav = new ModelAndView("login");
  mav.addObject("message", "Username or Password is wrong!!");
  }
  return mav;
  }
}
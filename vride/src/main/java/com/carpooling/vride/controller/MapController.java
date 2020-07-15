package com.carpooling.vride.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class MapController {
  @RequestMapping(value = "/map", method = RequestMethod.GET)
  public ModelAndView showLog(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView mav = new ModelAndView("map");
    mav.addObject("map", new Object());
    return mav;
  }
}
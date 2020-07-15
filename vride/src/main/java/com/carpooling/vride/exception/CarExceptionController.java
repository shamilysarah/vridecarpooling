package com.carpooling.vride.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class CarExceptionController {

	@ExceptionHandler(value = InvalidCarException.class)
	   public ModelAndView exception(InvalidCarException exception) {
	      return new ModelAndView("vacancyexception", HttpStatus.NOT_FOUND);
	   }
}
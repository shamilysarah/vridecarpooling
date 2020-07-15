package com.carpooling.vride;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
@SpringBootApplication
@ComponentScan
public class VrideApplication {

	public static void main(String[] args) {
		SpringApplication.run(VrideApplication.class, args);
		PropertyConfigurator.configure("C:\\Users\\Admin\\workspace\\vride\\src\\main\\resources\\log4j.properties");
	    Logger log =Logger.getLogger(VrideApplication.class.getName());
	    log.info("Welcome User!");
	}
}

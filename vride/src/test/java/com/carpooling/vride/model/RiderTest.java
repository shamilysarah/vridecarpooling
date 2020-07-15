package com.carpooling.vride.model;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.carpooling.vride.VrideApplication;
import com.carpooling.vride.service.RiderService;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = VrideApplication.class)
public class RiderTest {
	@Autowired
	public RiderService riderService;
	public Rider rider;
	@Before
	public void setUp() throws Exception{
		
		rider =new Rider();
		rider.setEmpid(120);
		rider.setUsername("rahul");
	    rider.setOrigin("singanallur");
	    rider.setDestination("skcet");
	}
	@Test
	public void testEmpidPositive() {	
		Rider ridobj=(Rider)riderService.findById(120);
		if(ridobj == null)
		        assertTrue(riderService.input(rider));
			else
				assertFalse(riderService.input(rider));
		
		
	}

}

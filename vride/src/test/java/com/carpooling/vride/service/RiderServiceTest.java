package com.carpooling.vride.service;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.carpooling.vride.VrideApplication;
import com.carpooling.vride.model.Rider;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = VrideApplication.class)
public class RiderServiceTest {

	@Autowired
	public RiderService riderService;
	
	@Test
	public final void testGetAllRiders() {
			
		List<Rider> actual = (List<Rider>) riderService.getAllRiders();
		boolean testResult = false;
		if(actual != null && actual.size() > 0)
			testResult = true;
		assertTrue(testResult);
		
}
}

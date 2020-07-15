package com.carpooling.vride.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.MockMvc;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import com.carpooling.vride.VrideApplication;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = VrideApplication.class)
public class RiderControllerTest {

	private MockMvc mockMvc;	 
	@Test
	public final void testGetAllRiders() {
		try {
			this.mockMvc.perform(get("/riderlist"))
			.andExpect(status().isOk());
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
}

package com.carpooling.vride.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.carpooling.vride.model.Provider;
import com.carpooling.vride.model.Rider;
@Repository
public class RiderDao {
	@Autowired
	JdbcTemplate jdbcTemplate;
	public void input(Rider rider) {
		 String sql = "insert into riders values(?,?,?,?)";
		    jdbcTemplate.update(sql, new Object[] {rider.getEmpid(),rider.getUsername(),  rider.getOrigin(),
		    		rider.getDestination() });
		    }

}

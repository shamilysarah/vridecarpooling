package com.carpooling.vride.dao;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.carpooling.vride.model.Provider;
import com.carpooling.vride.model.User;
@Repository
public class ProviderDao {
	@Autowired
	JdbcTemplate jdbcTemplate;
	public void upload(Provider provider) {
		 String sql = "insert into providers values(?,?,?,?,?,?,?,?)";
		    jdbcTemplate.update(sql, new Object[] {provider.getEmpid(),provider.getUsername(), provider.getCarnum(), provider.getOrigin(),
		    		provider.getDestination(), provider.getStarttime(), provider.getVacancy(), provider.getAmount() });
		    }

		
	}

	
		
	



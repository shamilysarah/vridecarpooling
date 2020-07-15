package com.carpooling.vride.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;
import org.springframework.jdbc.core.RowMapper;  
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.carpooling.vride.model.Provider;
import com.carpooling.vride.model.User;
@Repository
public class ProviderRepositoryCustomImpl implements ProviderRepositoryCustom{
@Autowired
JdbcTemplate jdbcTemplate;

	
}

			
				

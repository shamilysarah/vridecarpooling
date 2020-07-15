package com.carpooling.vride.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.carpooling.vride.dao.UserDao;
import com.carpooling.vride.model.Login;
import com.carpooling.vride.model.User;
@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDao userDao;
	public void register(User user){
		userDao.register(user);
	}
	 public User validateUser(Login login){
		 return userDao.validateUser(login);
	 }
	}



package com.carpooling.vride.dao;

import org.springframework.stereotype.Repository;

import com.carpooling.vride.model.Login;
import com.carpooling.vride.model.User;
@Repository
public interface UserDao {
  void register(User user);
  User validateUser(Login login);
 
/*User findUserByUserName(String username);
User findUserByEmail(String email);*/
}
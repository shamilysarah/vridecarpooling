package com.carpooling.vride.service;

import org.springframework.stereotype.Service;

import com.carpooling.vride.model.Login;
import com.carpooling.vride.model.User;
@Service
public interface UserService {
  void register(User user);
  User validateUser(Login login);


}

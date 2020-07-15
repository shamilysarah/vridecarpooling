package com.carpooling.vride.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.carpooling.vride.dao.ProviderRepository;
import com.carpooling.vride.dao.RiderDao;
import com.carpooling.vride.dao.RiderRepository;
import com.carpooling.vride.model.Provider;
import com.carpooling.vride.model.Rider;
@Service
public class RiderService {
	@Autowired
	RiderDao riderDao;
	@Autowired
	RiderRepository riderRepository;
	public Boolean input(Rider rider) {
		riderDao.input(rider);
		return true;
		}
	public List<Rider> getAllRiders() {
		 return  (List<Rider>)riderRepository.findAll();
	}
	public Object findById(int i) {
		return riderRepository.findById(i);
	}
}

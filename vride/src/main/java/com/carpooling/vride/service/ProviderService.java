package com.carpooling.vride.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.carpooling.vride.dao.ProviderDao;
import com.carpooling.vride.dao.ProviderRepository;
import com.carpooling.vride.model.Provider;
@Service
public class ProviderService {
	@Autowired
	ProviderDao providerDao;
	@Autowired
	ProviderRepository providerRepository;
	
	
	public void upload(Provider provider) {
		providerDao.upload(provider);
		}
		
         	public List<Provider> getAllProviders() {
			 return  (List<Provider>)providerRepository.findAll();
         	}
	
	

			public Provider findById(int empid) {
				
				return providerRepository.findById(empid).get();
			}

			public void deleteProvider(int empid) {
				 providerRepository.deleteById(empid);
				
			}

			public Provider getProviderById(int empid) {
				return providerRepository.findById(empid).get();
			}

			public void saveOrUpdate(Provider provider) {
				 providerRepository.save(provider);
				
			}

			
			
			/*public List<Provider> get(String usern) {
				return  (List<Provider>)providerRepository.get(usern);}
				*/
}

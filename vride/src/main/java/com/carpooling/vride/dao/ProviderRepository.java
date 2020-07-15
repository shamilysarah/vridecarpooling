package com.carpooling.vride.dao;
import java.awt.print.Pageable;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.carpooling.vride.model.Provider;
@Repository
public interface ProviderRepository extends JpaRepository<Provider, Integer>,ProviderRepositoryCustom {
	List<Provider> findAll();	
	//List<Provider> findAllByVacancy(int vacancy, Pageable pageable);	
	
}

	


	



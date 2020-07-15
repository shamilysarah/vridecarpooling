package com.carpooling.vride.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.carpooling.vride.model.Rider;

public interface RiderRepository extends JpaRepository<Rider, Integer>{

}

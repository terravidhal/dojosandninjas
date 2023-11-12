package com.dojo.relationships.dojosandninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dojo.relationships.dojosandninjas.models.Ninjas;




@Repository
public interface NinjasRepository extends CrudRepository<Ninjas, Long> { 
	
         List<Ninjas> findAll();
}

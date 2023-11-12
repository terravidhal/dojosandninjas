package com.dojo.relationships.dojosandninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dojo.relationships.dojosandninjas.models.Dojos;



@Repository
public interface DojosRepository extends CrudRepository<Dojos, Long> { 
	
         List<Dojos> findAll();
}





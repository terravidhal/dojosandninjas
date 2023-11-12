package com.dojo.relationships.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.dojo.relationships.dojosandninjas.models.Dojos;
import com.dojo.relationships.dojosandninjas.repositories.DojosRepository;

@Service
public class DojosService {
     // adding the Dojo repository as a dependency
     private final DojosRepository dojoRepository;
    
     public DojosService(DojosRepository dojoRepository) {
         this.dojoRepository = dojoRepository;
     }

     
     // returns all the Dojos
     public List<Dojos> allDojos() {
         return dojoRepository.findAll();
     }

     // retrieves a Dojo
     public Dojos findDojo(Long id) {
        
         Optional<Dojos> optionalDojo = dojoRepository.findById(id);
         if(optionalDojo.isPresent()) {
             return optionalDojo.get();
         } else {
             return null;
         }
     }
     
     // creates a Dojo
     public Dojos createDojo(Dojos b) {
         return dojoRepository.save(b);
     }

     // update
	public Dojos updateDojo(Dojos b) {
		return dojoRepository.save(b);
	}
	//delete
	public void deleteDojo(Long id) {
		Optional<Dojos> optionalDojo = dojoRepository.findById(id);
		if(optionalDojo.isPresent()) {
			dojoRepository.deleteById(id);
		}
	}
}

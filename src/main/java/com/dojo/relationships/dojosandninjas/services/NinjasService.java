package com.dojo.relationships.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.dojo.relationships.dojosandninjas.models.Ninjas;
import com.dojo.relationships.dojosandninjas.repositories.NinjasRepository;


@Service
public class NinjasService {
     // adding the Ninja repository as a dependency
     private final NinjasRepository ninjaRepository;
    
     public NinjasService(NinjasRepository ninjaRepository) {
         this.ninjaRepository = ninjaRepository;
     }

     
     // returns all the ninjas
     public List<Ninjas> allNinjas() {
         return ninjaRepository.findAll();
     }

     // retrieves a Ninja
     public Ninjas findNinja(Long id) {
        
         Optional<Ninjas> optionalNinja = ninjaRepository.findById(id);
         if(optionalNinja.isPresent()) {
             return optionalNinja.get();
         } else {
             return null;
         }
     }
     


     // creates a Ninja
     public Ninjas createNinja(Ninjas b) {
         return ninjaRepository.save(b);
     }

     // update
	public Ninjas updateNinja(Ninjas b) {
		return ninjaRepository.save(b);
	}
	//delete
	public void deleteNinja(Long id) {
		Optional<Ninjas> optionalNinja = ninjaRepository.findById(id);
		if(optionalNinja.isPresent()) {
			ninjaRepository.deleteById(id);
		}
	}
}

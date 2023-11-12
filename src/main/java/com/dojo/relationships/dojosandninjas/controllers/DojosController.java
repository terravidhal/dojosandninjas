package com.dojo.relationships.dojosandninjas.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dojo.relationships.dojosandninjas.models.Dojos;
import com.dojo.relationships.dojosandninjas.services.DojosService;

import jakarta.validation.Valid;



@Controller
public class DojosController {

    // injection de dependance 
    @Autowired
     DojosService dojoService;

    
    
    //home redirect
    @RequestMapping("/")
    public String index() {
        return "redirect:/dojos";
    }  

    //home page all dojos
     @RequestMapping("/dojos")
    public String show_all(Model model) {

        List<Dojos> dojos = dojoService.allDojos();
        model.addAttribute("dojos", dojos);
        return "index.jsp";
    }  
   
    // details page , specific dojo
    @RequestMapping("/dojo/{id}")
    public String show_one(@PathVariable("id") Long id,
                            Model model) {
        Dojos dojo = dojoService.findDojo(id);
        model.addAttribute("dojo", dojo);
    	return "details_dojo.jsp";
    }


    // form page / create new dojo
    @RequestMapping("/dojo/new")
    public String create_page(@ModelAttribute("dojoAttr") Dojos dojo) { 
        return "dojo_form.jsp";
    }


    // processing request create new dojo
    @RequestMapping(value="/process_dojo", method=RequestMethod.POST)
    public String create_process(@Valid @ModelAttribute("dojoAttr") Dojos dojo, 
                                 BindingResult result) {
        if (result.hasErrors()) {
            return "dojo_form.jsp";
        } else {
            dojoService.createDojo(dojo);
            return "redirect:/dojos";
        }
    }

}
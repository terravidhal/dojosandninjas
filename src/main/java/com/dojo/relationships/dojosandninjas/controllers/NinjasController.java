package com.dojo.relationships.dojosandninjas.controllers;

import org.springframework.beans.factory.annotation.Autowired;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dojo.relationships.dojosandninjas.models.Ninjas;
import com.dojo.relationships.dojosandninjas.services.NinjasService;
import com.dojo.relationships.dojosandninjas.services.DojosService;

import jakarta.validation.Valid;

@Controller
public class NinjasController {

    // injaction de dependances 
   @Autowired
    NinjasService ninjaService;

   @Autowired
    DojosService dojoService;


    // form page / create new ninja
    @RequestMapping("/ninja/new")
    public String create_page(@ModelAttribute("ninjaAttr") Ninjas ninja,
                              Model model) { 
        model.addAttribute("dojos", dojoService.allDojos());                        
        return "ninja_form.jsp";
    }


    // processing request create new ninja
    @RequestMapping(value="/process_ninja", method=RequestMethod.POST)
    public String create_process(@Valid @ModelAttribute("ninjaAttr") Ninjas ninja, 
                                 BindingResult result,
                                 Model model) {
        if (result.hasErrors()) {
           model.addAttribute("dojos", dojoService.allDojos());
            return "ninja_form.jsp";
        } else {
            ninjaService.createNinja(ninja);
            return "redirect:/dojos";
        }
    }


}

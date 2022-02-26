package com.gleenpeltroche.dojosninjas.controllers;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gleenpeltroche.dojosninjas.models.Dojo;
import com.gleenpeltroche.dojosninjas.models.Ninja;
import com.gleenpeltroche.dojosninjas.services.MainService;

@Controller
public class MainController {
	private final MainService mainService;
    public MainController(MainService mainService){
        this.mainService = mainService;
    }
    @RequestMapping("/dojos")
    public String index(Model model) {
       List<Dojo> dojos = mainService.allDojos();
       model.addAttribute("dojos", dojos);
       return "index.jsp";
    }
    
    @RequestMapping("/dojos/{id}")
    public String index(@PathVariable("id") Long id, Model model) {
       Dojo dojo = mainService.finDojo(id);
       model.addAttribute("dojo", dojo);
       return "dojobyid.jsp";
    }
    
    @RequestMapping("/dojos/new")
    public String newdojo(@ModelAttribute("dojo") Dojo dojo) {
       return "newdojo.jsp";
    }
    
    @RequestMapping(value="/dojos/create", method=RequestMethod.POST)
    public String createdojo(@Validated @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
    	if(result.hasErrors()) {
    		return "newdojo.jsp";
    	}
    	mainService.createDojo(dojo);
    	return "redirect:/dojos";
    }
    
    @RequestMapping("/ninjas/new")
    public String newninja(@ModelAttribute("ninja") Ninja ninja, Model model) {
    	List<Dojo> dojos = mainService.allDojos();
    	model.addAttribute("dojos", dojos);
    	return "newninja.jsp";
    }
    
    @RequestMapping(value="/ninjas/create", method=RequestMethod.POST)
    public String createdojo(@Validated @ModelAttribute("ninja") Ninja ninja, BindingResult result) {
    	if(result.hasErrors()) {
    		return "newninja.jsp";
    	}
    	mainService.createNinja(ninja);
    	return "redirect:/dojos";
    }
    
    @RequestMapping("/pages/{pageNumber}")
    public String getNinjasPerPage(Model model, @PathVariable("pageNumber") int pageNumber) {
        Page<Ninja> ninjas = mainService.ninjasPerPage(pageNumber - 1);
        int totalPages = ninjas.getTotalPages();
        model.addAttribute("totalPages", totalPages);
        model.addAttribute("ninjas", ninjas);
        return "ninjas.jsp";
    }
    
    
}

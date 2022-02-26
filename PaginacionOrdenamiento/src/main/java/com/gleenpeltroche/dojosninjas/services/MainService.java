package com.gleenpeltroche.dojosninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gleenpeltroche.dojosninjas.models.Dojo;
import com.gleenpeltroche.dojosninjas.models.Ninja;
import com.gleenpeltroche.dojosninjas.repositories.DojoRepository;
import com.gleenpeltroche.dojosninjas.repositories.NinjaRepository;

@Service
@Transactional
public class MainService {
 
	private final DojoRepository dojoRepository;
	private final NinjaRepository ninjaRepository;
    
    public MainService(DojoRepository dojoRepository, NinjaRepository ninjaRepository) {
        this.dojoRepository = dojoRepository;
        this.ninjaRepository = ninjaRepository;
    }

    public List<Dojo> allDojos() {
        return dojoRepository.findAll();
    }
    
    public Dojo createDojo(Dojo dojo) {
        return dojoRepository.save(dojo);
    }
    
    public List<Ninja> allNinjas() {
        return ninjaRepository.findAll();
    }
    
    public Ninja createNinja(Ninja ninja) {
        return ninjaRepository.save(ninja);
    }
    public Dojo finDojo(Long id) {
        Optional<Dojo> optionalBook = dojoRepository.findById(id);
        if(optionalBook.isPresent()) {
            return optionalBook.get();
        } else {
            return null;
        }
    }
    
    private static final int PAGE_SIZE = 5;
    public Page<Ninja> ninjasPerPage(int pageNumber) {
        PageRequest pageRequest = PageRequest.of(pageNumber, PAGE_SIZE, Sort.Direction.ASC, "lastName");
        Page<Ninja> ninjas = ninjaRepository.findAll(pageRequest);
        return ninjas;
    }
}

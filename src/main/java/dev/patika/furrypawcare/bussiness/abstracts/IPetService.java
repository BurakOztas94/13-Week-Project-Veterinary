package dev.patika.furrypawcare.bussiness.abstracts;

import dev.patika.furrypawcare.entity.Pet;

import java.util.List;

public interface IPetService {
        List<Pet> findPets() ;
        Pet findById(Long id);
}
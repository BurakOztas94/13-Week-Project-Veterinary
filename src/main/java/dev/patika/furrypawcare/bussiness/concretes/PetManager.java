package dev.patika.furrypawcare.bussiness.concretes;


import dev.patika.furrypawcare.bussiness.abstracts.IPetService;
import dev.patika.furrypawcare.entity.Pet;
import dev.patika.furrypawcare.repository.PetRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PetManager implements IPetService {

    private final PetRepository petRepository;


    public PetManager (PetRepository petRepository)
        {
            this.petRepository = petRepository;
        }
    @Override
    public List<Pet> findPets ()
        {
            return petRepository.findAll ();
        }

    @Override
    public Pet findById (Long id)
        {
            return petRepository.findById (id).orElseThrow ();
        }
}

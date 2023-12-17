package dev.patika.furrypawcare.api;

import dev.patika.furrypawcare.bussiness.concretes.PetManager;
import dev.patika.furrypawcare.entity.Pet;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/v1/pets")

public class PetController {
    private final PetManager petManager;

    public PetController (PetManager petManager)
        {
            this.petManager = petManager;
        }

    @GetMapping("/")
    public List<Pet> findAll ()
        {
            return petManager.findPets ();
        }

    @GetMapping("/{id}")
    public Pet findById (@PathVariable Long id)
        {
            return petManager.findById (id);
        }


}

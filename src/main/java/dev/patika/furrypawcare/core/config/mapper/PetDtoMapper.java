package dev.patika.furrypawcare.core.config.mapper;

import dev.patika.furrypawcare.dto.PetDTO;
import dev.patika.furrypawcare.entity.Pet;
import org.springframework.stereotype.Service;

import java.util.function.Function;

@Service
public class PetDtoMapper implements Function<Pet, PetDTO> {
    @Override
    public PetDTO apply (Pet pet)
        {
            return new PetDTO (
                    pet.getId () ,
                    pet.getName () ,
                    pet.getSpecies () ,
                    pet.getBreed () ,
                    pet.getGender () ,
                    pet.getColour () ,
                    pet.getBirthDate () ,
                    pet.getOwner ().getId ()
            );

        }

}

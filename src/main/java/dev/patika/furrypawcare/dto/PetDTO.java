package dev.patika.furrypawcare.dto;


import java.time.LocalDate;

public record PetDTO(
        Long id ,
        String name,
        String species ,
        String breed ,
        String colour ,
        String gender ,
        LocalDate birthDate,
        Long ownerId

) {


}

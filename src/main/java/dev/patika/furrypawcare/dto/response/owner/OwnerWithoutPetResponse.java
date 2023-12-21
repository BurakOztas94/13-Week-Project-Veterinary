package dev.patika.furrypawcare.dto.response.owner;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OwnerWithoutPetResponse {
    private Long id;
    private String name;
    private String phone;
    private String email;
    private String address;
    private String city;
}

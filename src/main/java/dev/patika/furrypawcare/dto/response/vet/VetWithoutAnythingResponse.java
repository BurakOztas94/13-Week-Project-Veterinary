package dev.patika.furrypawcare.dto.response.vet;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class VetWithoutAnythingResponse {
    private Long id;
    private String name;
    private String phone;
    private String email;
    private String address;
    private String city;
}

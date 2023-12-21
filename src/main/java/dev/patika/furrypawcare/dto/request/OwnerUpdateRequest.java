package dev.patika.furrypawcare.dto.request;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OwnerUpdateRequest {
    @Positive(message = "ID value must be positive!")
    private Long id;
    @NotNull(message = "Owner name must not be empty!")
    private String name;
    private String phone;

    private String email;
    private String address;
    private String city;

}

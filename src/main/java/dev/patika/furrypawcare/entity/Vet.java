package dev.patika.furrypawcare.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Entity
@Table(name = "vets")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Vet {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;
    private String phone;
    private String email;
    private String address;
    private String city;

    @OneToMany(mappedBy = "vet", cascade = CascadeType.REMOVE)
    //@JsonIgnore
    private List<Appointment> appointments;

    @OneToMany(mappedBy = "vet", cascade = CascadeType.REMOVE)
    // @JsonIgnore
    private List<Workday> workdays;

}

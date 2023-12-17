package dev.patika.furrypawcare.entity;


import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;

@Entity
@Table(name = "workdays")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Workday {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private LocalDate date;

    @ManyToOne(cascade = CascadeType.REMOVE)
    @JoinColumn(name = "vet_id")
    private Vet vet;

}






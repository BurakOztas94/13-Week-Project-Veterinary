package dev.patika.furrypawcare.dto.request;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class AppointmentSaveRequest {
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm",timezone = "UTC")
    private LocalDateTime startDateTime;

}

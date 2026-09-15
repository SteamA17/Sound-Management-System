package Sound.Management.Backend.controller;

import Sound.Management.Backend.entity.RentalEquipment;
import Sound.Management.Backend.repository.RentalEquipmentRepository;

import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/rental-equipment")
public class RentalEquipmentController {

    private final RentalEquipmentRepository rentalEquipmentRepository;

    public RentalEquipmentController(
            RentalEquipmentRepository rentalEquipmentRepository) {
        this.rentalEquipmentRepository = rentalEquipmentRepository;
    }

    @GetMapping
    public List<RentalEquipment> getAllRentalEquipment() {
        return rentalEquipmentRepository.findAll();
    }

    @PostMapping
    public RentalEquipment assignEquipment(
            @RequestBody RentalEquipment rentalEquipment) {

        return rentalEquipmentRepository.save(rentalEquipment);
    }
}
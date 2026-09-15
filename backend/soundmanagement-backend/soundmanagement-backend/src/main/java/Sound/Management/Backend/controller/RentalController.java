package Sound.Management.Backend.controller;

import Sound.Management.Backend.entity.Rental;
import Sound.Management.Backend.repository.RentalRepository;

import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/rentals")
public class RentalController {

    private final RentalRepository rentalRepository;

    public RentalController(RentalRepository rentalRepository) {
        this.rentalRepository = rentalRepository;
    }

    @GetMapping
    public List<Rental> getAllRentals() {
        return rentalRepository.findAll();
    }

    @PostMapping
    public Rental createRental(@RequestBody Rental rental) {
        return rentalRepository.save(rental);
    }
}
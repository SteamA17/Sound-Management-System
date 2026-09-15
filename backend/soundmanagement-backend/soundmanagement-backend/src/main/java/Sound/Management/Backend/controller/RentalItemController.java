package Sound.Management.Backend.controller;

import Sound.Management.Backend.entity.RentalItem;
import Sound.Management.Backend.repository.RentalItemRepository;

import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/rental-items")
public class RentalItemController {

    private final RentalItemRepository rentalItemRepository;

    public RentalItemController(RentalItemRepository rentalItemRepository) {
        this.rentalItemRepository = rentalItemRepository;
    }

    @GetMapping
    public List<RentalItem> getAllRentalItems() {
        return rentalItemRepository.findAll();
    }

    @PostMapping
    public RentalItem createRentalItem(@RequestBody RentalItem rentalItem) {
        return rentalItemRepository.save(rentalItem);
    }
}
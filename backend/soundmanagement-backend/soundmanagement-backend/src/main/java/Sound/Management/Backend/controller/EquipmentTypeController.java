package Sound.Management.Backend.controller;

import Sound.Management.Backend.entity.EquipmentType;
import Sound.Management.Backend.repository.EquipmentTypeRepository;

import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/equipment-types")
public class EquipmentTypeController {

    private final EquipmentTypeRepository equipmentTypeRepository;

    public EquipmentTypeController(
            EquipmentTypeRepository equipmentTypeRepository) {
        this.equipmentTypeRepository = equipmentTypeRepository;
    }

    @GetMapping
    public List<EquipmentType> getAllEquipmentTypes() {
        return equipmentTypeRepository.findAll();
    }
}
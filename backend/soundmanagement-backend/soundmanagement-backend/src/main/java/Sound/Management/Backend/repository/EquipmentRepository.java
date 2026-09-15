package Sound.Management.Backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import Sound.Management.Backend.entity.Equipment;

public interface EquipmentRepository
        extends JpaRepository<Equipment, Integer> {
}

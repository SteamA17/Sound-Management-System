package Sound.Management.Backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import Sound.Management.Backend.entity.EquipmentType;

public interface EquipmentTypeRepository 
    extends JpaRepository<EquipmentType, Integer> {
    
}

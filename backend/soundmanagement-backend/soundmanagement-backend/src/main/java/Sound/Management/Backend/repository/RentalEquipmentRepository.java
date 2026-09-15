package Sound.Management.Backend.repository;

import Sound.Management.Backend.entity.RentalEquipment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RentalEquipmentRepository 
    extends JpaRepository<RentalEquipment, Integer> {
    
}

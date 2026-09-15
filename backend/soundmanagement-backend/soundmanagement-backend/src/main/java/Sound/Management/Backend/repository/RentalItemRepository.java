package Sound.Management.Backend.repository;

import Sound.Management.Backend.entity.RentalItem;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RentalItemRepository 
    extends JpaRepository<RentalItem, Integer> {
    
}

package Sound.Management.Backend.repository;

import Sound.Management.Backend.entity.Rental;
import org.springframework.data.jpa.repository.JpaRepository;
public interface RentalRepository 
    extends JpaRepository<Rental, Integer> {
    
}

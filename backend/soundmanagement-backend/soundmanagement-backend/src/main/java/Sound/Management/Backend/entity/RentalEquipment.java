package Sound.Management.Backend.entity;

import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
@Table(
    name = "rental_equipment",
    uniqueConstraints = {
        @UniqueConstraint(
            name = "uq_rental_equipment",
            columnNames = {"rental_id", "equipment_id"}
        )
    }
)
public class RentalEquipment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "rental_equipment_id")
    private Integer rentalEquipmentId;

    @ManyToOne
    @JoinColumn(name = "rental_id", nullable = false)
    private Rental rental;

    @ManyToOne
    @JoinColumn(name = "rental_item_id", nullable = false)
    private RentalItem rentalItem;

    @ManyToOne
    @JoinColumn(name = "equipment_id", nullable = false)
    private Equipment equipment;

    @Column(name = "date_out", nullable = false)
    private LocalDate dateOut;

    @Column(name = "date_returned")
    private LocalDate dateReturned;

    @Column(name = "condition_out")
    private String conditionOut;

    @Column(name = "condition_returned")
    private String conditionReturned;

    private String notes;


    // Getters and setters

    public Integer getRentalEquipmentId() {
        return rentalEquipmentId;
    }

    public void setRentalEquipmentId(Integer rentalEquipmentId) {
        this.rentalEquipmentId = rentalEquipmentId;
    }

    public Rental getRental() {
        return rental;
    }

    public void setRental(Rental rental) {
        this.rental = rental;
    }

    public RentalItem getRentalItem() {
        return rentalItem;
    }

    public void setRentalItem(RentalItem rentalItem) {
        this.rentalItem = rentalItem;
    }

    public Equipment getEquipment() {
        return equipment;
    }

    public void setEquipment(Equipment equipment) {
        this.equipment = equipment;
    }

    public LocalDate getDateOut() {
        return dateOut;
    }

    public void setDateOut(LocalDate dateOut) {
        this.dateOut = dateOut;
    }

    public LocalDate getDateReturned() {
        return dateReturned;
    }

    public void setDateReturned(LocalDate dateReturned) {
        this.dateReturned = dateReturned;
    }

    public String getConditionOut() {
        return conditionOut;
    }

    public void setConditionOut(String conditionOut) {
        this.conditionOut = conditionOut;
    }

    public String getConditionReturned() {
        return conditionReturned;
    }

    public void setConditionReturned(String conditionReturned) {
        this.conditionReturned = conditionReturned;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }
}
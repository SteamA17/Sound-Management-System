package Sound.Management.Backend.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "rental_items")
public class RentalItem {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "rental_item_id")
    private Integer rentalItemId;

    @ManyToOne
    @JoinColumn(name = "rental_id", nullable = false)
    private Rental rental;

    @ManyToOne
    @JoinColumn(name = "equipment_type_id", nullable = false)
    private EquipmentType equipmentType;

    @Column(nullable = false)
    private Integer quantity;

    @Column(name = "rental_rate", nullable = false)
    private BigDecimal rentalRate;

    @Column(nullable = false)
    private BigDecimal subtotal;

    @Column(name = "condition_out")
    private String conditionOut;

    @Column(name = "condition_returned")
    private String conditionReturned;

    private String notes;


    // Getters and setters

    public Integer getRentalItemId() {
        return rentalItemId;
    }

    public void setRentalItemId(Integer rentalItemId) {
        this.rentalItemId = rentalItemId;
    }

    public Rental getRental() {
        return rental;
    }

    public void setRental(Rental rental) {
        this.rental = rental;
    }

    public EquipmentType getEquipmentType() {
        return equipmentType;
    }

    public void setEquipmentType(EquipmentType equipmentType) {
        this.equipmentType = equipmentType;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public BigDecimal getRentalRate() {
        return rentalRate;
    }

    public void setRentalRate(BigDecimal rentalRate) {
        this.rentalRate = rentalRate;
    }

    public BigDecimal getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(BigDecimal subtotal) {
        this.subtotal = subtotal;
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
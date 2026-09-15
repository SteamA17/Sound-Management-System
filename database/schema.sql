CREATE DATABASE IF NOT EXISTS soundmanagement;

USE soundmanagement;


-- =====================================================
-- EQUIPMENT CATEGORIES
-- =====================================================

CREATE TABLE IF NOT EXISTS equipment_categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);


-- =====================================================
-- EQUIPMENT TYPES
-- =====================================================

CREATE TABLE IF NOT EXISTS equipment_type (
    equipment_type_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT NOT NULL,
    name VARCHAR(150) NOT NULL,
    brand VARCHAR(100),
    model VARCHAR(100),
    description TEXT,
    rental_rate DECIMAL(10,2) NOT NULL DEFAULT 0.00,

    CONSTRAINT fk_equipment_type_category
        FOREIGN KEY (category_id)
        REFERENCES equipment_categories(category_id)
);


-- =====================================================
-- INDIVIDUAL EQUIPMENT
-- =====================================================

CREATE TABLE IF NOT EXISTS equipment (
    equipment_id INT AUTO_INCREMENT PRIMARY KEY,
    equipment_type_id INT NOT NULL,
    asset_code VARCHAR(50) NOT NULL UNIQUE,
    serial_number VARCHAR(100) UNIQUE,
    equipment_condition VARCHAR(50) NOT NULL DEFAULT 'Good',
    status VARCHAR(50) NOT NULL DEFAULT 'Available',
    purchase_date DATE,
    purchase_price DECIMAL(10,2),
    location VARCHAR(100),
    notes TEXT,

    CONSTRAINT fk_equipment_type
        FOREIGN KEY (equipment_type_id)
        REFERENCES equipment_type(equipment_type_id)
);


-- =====================================================
-- RENTALS
-- =====================================================

CREATE TABLE IF NOT EXISTS rentals (
    rental_id INT AUTO_INCREMENT PRIMARY KEY,
    rental_reference VARCHAR(50) NOT NULL UNIQUE,
    rental_date DATE NOT NULL,
    start_date DATE NOT NULL,
    expected_return_date DATE NOT NULL,
    actual_return_date DATE,
    status VARCHAR(50) NOT NULL DEFAULT 'Active',
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- =====================================================
-- RENTAL ITEMS
-- =====================================================

CREATE TABLE IF NOT EXISTS rental_items (
    rental_item_id INT AUTO_INCREMENT PRIMARY KEY,
    rental_id INT NOT NULL,
    equipment_type_id INT NOT NULL,
    quantity INT NOT NULL,
    rental_rate DECIMAL(10,2) NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,
    condition_out VARCHAR(100),
    condition_returned VARCHAR(100),
    notes TEXT,

    CONSTRAINT fk_rental_item_rental
        FOREIGN KEY (rental_id)
        REFERENCES rentals(rental_id),

    CONSTRAINT fk_rental_item_equipment_type
        FOREIGN KEY (equipment_type_id)
        REFERENCES equipment_type(equipment_type_id)
);

-- =====================================================
-- RENTAL EQUIPMENT
-- Links a rental to the actual physical equipment
-- =====================================================

CREATE TABLE IF NOT EXISTS rental_equipment (
    rental_equipment_id INT AUTO_INCREMENT PRIMARY KEY,
    rental_id INT NOT NULL,
    rental_item_id INT NOT NULL,
    equipment_id INT NOT NULL,
    date_out DATE NOT NULL,
    date_returned DATE,
    condition_out VARCHAR(100),
    condition_returned VARCHAR(100),
    notes TEXT,

    CONSTRAINT fk_rental_equipment_rental
        FOREIGN KEY (rental_id)
        REFERENCES rentals(rental_id),

    CONSTRAINT fk_rental_equipment_item
        FOREIGN KEY (rental_item_id)
        REFERENCES rental_items(rental_item_id),

    CONSTRAINT fk_rental_equipment_equipment
        FOREIGN KEY (equipment_id)
        REFERENCES equipment(equipment_id),

    CONSTRAINT uq_rental_equipment
        UNIQUE (rental_id, equipment_id)
);

-- =====================================================
-- REPAIRS
-- =====================================================

CREATE TABLE IF NOT EXISTS repairs (
    repair_id INT AUTO_INCREMENT PRIMARY KEY,
    equipment_id INT NOT NULL,
    problem_description TEXT NOT NULL,
    date_reported DATE NOT NULL,
    date_started DATE,
    date_completed DATE,
    status VARCHAR(50) NOT NULL DEFAULT 'Reported',
    repair_cost DECIMAL(10,2) DEFAULT 0.00,
    solution TEXT,
    notes TEXT,

    CONSTRAINT fk_repair_equipment
        FOREIGN KEY (equipment_id)
        REFERENCES equipment(equipment_id)
);


-- =====================================================
-- MAINTENANCE
-- =====================================================

CREATE TABLE IF NOT EXISTS maintenance (
    maintenance_id INT AUTO_INCREMENT PRIMARY KEY,
    equipment_id INT NOT NULL,
    maintenance_type VARCHAR(100) NOT NULL,
    description TEXT,
    scheduled_date DATE,
    completed_date DATE,
    status VARCHAR(50) NOT NULL DEFAULT 'Scheduled',
    cost DECIMAL(10,2) DEFAULT 0.00,
    notes TEXT,

    CONSTRAINT fk_maintenance_equipment
        FOREIGN KEY (equipment_id)
        REFERENCES equipment(equipment_id)
);
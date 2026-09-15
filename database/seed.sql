USE sonicpro;


-- =====================================================
-- EQUIPMENT CATEGORIES
-- =====================================================

INSERT INTO equipment_categories (name, description)
VALUES
('Speakers', 'PA speakers, stage monitors and subwoofers'),
('Mixers', 'Analog and digital audio mixing consoles'),
('Microphones', 'Wired and wireless microphones'),
('Amplifiers', 'Power amplifiers used for sound systems'),
('DJ Equipment', 'DJ controllers, decks and related equipment'),
('Lighting', 'Stage and event lighting equipment'),
('Cables & Accessories', 'Audio cables, stands and other sound accessories');


-- =====================================================
-- EQUIPMENT TYPES
-- =====================================================

INSERT INTO equipment_types
(category_id, name, brand, model, description, rental_rate)
VALUES

-- Speakers
(1, 'Powered Speaker', 'JBL', 'EON715',
 '15-inch powered PA speaker for events and live sound', 750.00),

(1, 'Subwoofer', 'JBL', 'PRX818XLF',
 'Powered subwoofer for low-frequency sound reinforcement', 900.00),

(1, 'Stage Monitor', 'Yamaha', 'DBR12',
 '12-inch powered stage monitor speaker', 600.00),

-- Mixers
(2, 'Analog Mixer', 'Yamaha', 'MG16XU',
 '16-channel analog mixing console with USB interface', 800.00),

(2, 'Digital Mixer', 'Behringer', 'X32',
 'Digital mixing console for large events and live productions', 1500.00),

-- Microphones
(3, 'Dynamic Microphone', 'Shure', 'SM58',
 'Dynamic vocal microphone for live performances', 150.00),

(3, 'Wireless Microphone', 'Shure', 'BLX24/SM58',
 'Wireless vocal microphone system', 400.00),

-- Amplifiers
(4, 'Power Amplifier', 'Crown', 'XLi2500',
 'Professional power amplifier for PA systems', 700.00),

-- DJ Equipment
(5, 'DJ Controller', 'Pioneer DJ', 'DDJ-FLX4',
 'Two-channel DJ controller for events and entertainment', 1000.00),

-- Lighting
(6, 'LED Par Light', 'Generic', 'PAR-LED',
 'LED stage light for event lighting', 150.00),

(6, 'Moving Head Light', 'Generic', 'MH-150',
 'Moving head stage lighting fixture', 350.00),

-- Accessories
(7, 'Speaker Stand', 'Generic', 'SS-01',
 'Adjustable speaker stand', 100.00),

(7, 'Microphone Stand', 'Generic', 'MS-01',
 'Adjustable microphone stand', 50.00);


-- =====================================================
-- INDIVIDUAL EQUIPMENT
-- =====================================================

INSERT INTO equipment
(equipment_type_id, asset_code, serial_number,
 equipment_condition, status, purchase_date,
 purchase_price, location, notes)
VALUES

-- JBL EON715 Speakers
(1, 'SPK-001', 'JBL-EON715-001',
 'Good', 'Available', '2025-02-15',
 12500.00, 'SonicPro Warehouse', 'Main PA speaker'),

(1, 'SPK-002', 'JBL-EON715-002',
 'Good', 'Available', '2025-02-15',
 12500.00, 'SonicPro Warehouse', 'Main PA speaker'),

(1, 'SPK-003', 'JBL-EON715-003',
 'Good', 'Available', '2025-02-15',
 12500.00, 'SonicPro Warehouse', 'Main PA speaker'),

(1, 'SPK-004', 'JBL-EON715-004',
 'Good', 'Available', '2025-02-15',
 12500.00, 'SonicPro Warehouse', 'Main PA speaker'),

(1, 'SPK-005', 'JBL-EON715-005',
 'Good', 'Available', '2025-02-15',
 12500.00, 'SonicPro Warehouse', 'Main PA speaker'),

(1, 'SPK-006', 'JBL-EON715-006',
 'Good', 'Available', '2025-02-15',
 12500.00, 'SonicPro Warehouse', 'Main PA speaker'),


-- JBL Subwoofers
(2, 'SUB-001', 'JBL-PRX818-001',
 'Good', 'Available', '2025-03-10',
 18000.00, 'SonicPro Warehouse', 'Subwoofer'),

(2, 'SUB-002', 'JBL-PRX818-002',
 'Good', 'Available', '2025-03-10',
 18000.00, 'SonicPro Warehouse', 'Subwoofer'),


-- Yamaha Stage Monitors
(3, 'MON-001', 'YAM-DBR12-001',
 'Good', 'Available', '2025-04-05',
 11000.00, 'SonicPro Warehouse', 'Stage monitor'),

(3, 'MON-002', 'YAM-DBR12-002',
 'Good', 'Available', '2025-04-05',
 11000.00, 'SonicPro Warehouse', 'Stage monitor'),


-- Yamaha Mixer
(4, 'MIX-001', 'YAM-MG16-001',
 'Good', 'Available', '2025-01-20',
 9500.00, 'SonicPro Warehouse', '16-channel mixer'),


-- Behringer X32
(5, 'MIX-002', 'BEH-X32-001',
 'Good', 'Available', '2025-05-12',
 45000.00, 'SonicPro Warehouse', 'Digital mixer'),


-- Shure SM58 Microphones
(6, 'MIC-001', 'SHR-SM58-001',
 'Good', 'Available', '2025-02-01',
 2500.00, 'SonicPro Warehouse', 'Wired microphone'),

(6, 'MIC-002', 'SHR-SM58-002',
 'Good', 'Available', '2025-02-01',
 2500.00, 'SonicPro Warehouse', 'Wired microphone'),

(6, 'MIC-003', 'SHR-SM58-003',
 'Good', 'Available', '2025-02-01',
 2500.00, 'SonicPro Warehouse', 'Wired microphone'),

(6, 'MIC-004', 'SHR-SM58-004',
 'Good', 'Available', '2025-02-01',
 2500.00, 'SonicPro Warehouse', 'Wired microphone'),


-- Shure Wireless Microphone
(7, 'WLM-001', 'SHR-BLX-001',
 'Good', 'Available', '2025-06-01',
 6500.00, 'SonicPro Warehouse', 'Wireless microphone system'),

(7, 'WLM-002', 'SHR-BLX-002',
 'Good', 'Available', '2025-06-01',
 6500.00, 'SonicPro Warehouse', 'Wireless microphone system'),


-- Crown Amplifier
(8, 'AMP-001', 'CRN-XLI-001',
 'Good', 'Available', '2025-03-25',
 14000.00, 'SonicPro Warehouse', 'Power amplifier'),


-- Pioneer DJ Controller
(9, 'DJ-001', 'PIO-FLX4-001',
 'Good', 'Available', '2025-07-15',
 9000.00, 'SonicPro Office', 'DJ controller'),


-- LED Par Lights
(10, 'LGT-001', 'LED-PAR-001',
 'Good', 'Available', '2025-01-10',
 1200.00, 'SonicPro Warehouse', 'LED stage light'),

(10, 'LGT-002', 'LED-PAR-002',
 'Good', 'Available', '2025-01-10',
 1200.00, 'SonicPro Warehouse', 'LED stage light'),

(10, 'LGT-003', 'LED-PAR-003',
 'Good', 'Available', '2025-01-10',
 1200.00, 'SonicPro Warehouse', 'LED stage light'),

(10, 'LGT-004', 'LED-PAR-004',
 'Good', 'Available', '2025-01-10',
 1200.00, 'SonicPro Warehouse', 'LED stage light'),


-- Moving Head Lights
(11, 'MH-001', 'MOV-HEAD-001',
 'Good', 'Available', '2025-02-20',
 3500.00, 'SonicPro Warehouse', 'Moving head light'),

(11, 'MH-002', 'MOV-HEAD-002',
 'Good', 'Available', '2025-02-20',
 3500.00, 'SonicPro Warehouse', 'Moving head light'),


-- Speaker Stands
(12, 'STD-001', 'SPK-STD-001',
 'Good', 'Available', '2025-01-05',
 800.00, 'SonicPro Warehouse', 'Speaker stand'),

(12, 'STD-002', 'SPK-STD-002',
 'Good', 'Available', '2025-01-05',
 800.00, 'SonicPro Warehouse', 'Speaker stand'),


-- Microphone Stands
(13, 'MST-001', 'MIC-STD-001',
 'Good', 'Available', '2025-01-05',
 400.00, 'SonicPro Warehouse', 'Microphone stand'),

(13, 'MST-002', 'MIC-STD-002',
 'Good', 'Available', '2025-01-05',
 400.00, 'SonicPro Warehouse', 'Microphone stand');


-- =====================================================
-- SAMPLE RENTAL
-- =====================================================

INSERT INTO rentals
(rental_reference, rental_date, start_date,
 expected_return_date, status, notes)
VALUES
('RNT-2026-001', '2026-09-14', '2026-09-18',
 '2026-09-20', 'Active',
 'Sound equipment rental for a weekend event');


-- =====================================================
-- SAMPLE RENTAL ITEMS
-- =====================================================

INSERT INTO rental_items
(rental_id, equipment_type_id, quantity,
 rental_rate, subtotal, condition_out, notes)
VALUES

(1, 1, 4,
 750.00, 3000.00,
 'Good', 'Four JBL EON715 speakers'),

(1, 6, 2,
 150.00, 300.00,
 'Good', 'Two Shure SM58 microphones'),

(1, 4, 1,
 800.00, 800.00,
 'Good', 'One Yamaha MG16XU mixer');
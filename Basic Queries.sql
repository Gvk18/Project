USE smart_parking;

-- =========================================================
-- SIMPLE QUERIES
-- Q1 - Q40
-- =========================================================


-- =========================================================
-- 1. SELECT * AND SELECTING COLUMNS
-- =========================================================

-- Q1. Display all owners.
SELECT * FROM owners;

-- Q2. Display all vehicle types.
SELECT * FROM vehicle_types;

-- Q3. Display all vehicles.
SELECT * FROM vehicles;

-- Q4. Display all parking areas.
SELECT * FROM parking_areas;

-- Q5. Display all parking slots.
SELECT * FROM parking_slots;

-- Q6. Display all parking rates.
SELECT * FROM parking_rates;

-- Q7. Display all parking sessions.
SELECT * FROM parking_sessions;

-- Q8. Display all payments.
SELECT * FROM payments;

-- Q9. Display all violations.
SELECT * FROM violations;

-- Q10. Display owner names and email addresses.
SELECT owner_name, email FROM owners;

-- Q11. Display vehicle registration numbers and models.
SELECT registration_number, model FROM vehicles;

-- Q12. Display parking area names and locations.
SELECT area_name, location FROM parking_areas;

-- Q13. Display parking slot numbers and statuses.
SELECT slot_number, slot_status FROM parking_slots;


-- =========================================================
-- 2. FILTERING (WHERE, AND, OR, NOT, LIKE, BETWEEN, IN)
-- =========================================================

-- Q14. Display vehicles belonging to owner ID 1.
SELECT vehicle_id, registration_number, owner_id
FROM vehicles
WHERE owner_id = 1;

-- Q15. Display parking slots that are available.
SELECT slot_id, slot_number, slot_status
FROM parking_slots
WHERE slot_status = 'Available';

-- Q16. Display parking areas located in a location containing 'Main'.
SELECT area_name, location
FROM parking_areas
WHERE location LIKE '%Main%';

-- Q17. Display parking rates greater than 50 per hour.
SELECT area_id, type_id, hourly_rate
FROM parking_rates
WHERE hourly_rate > 50;

-- Q18. AND: Display available slots in parking area ID 1.
SELECT slot_number, area_id, slot_status
FROM parking_slots
WHERE slot_status = 'Available'
AND area_id = 1;

-- Q19. OR: Display payments that are Paid or Pending.
SELECT payment_id, amount, payment_status
FROM payments
WHERE payment_status = 'Paid' OR payment_status = 'Pending';

-- Q20. BETWEEN: Display parking rates between 20 and 100.
SELECT rate_id, hourly_rate
FROM parking_rates
WHERE hourly_rate BETWEEN 20 AND 100;

-- Q21. LIKE: Display owners whose names start with A.
SELECT owner_id, owner_name
FROM owners
WHERE owner_name LIKE 'A%';

-- Q22. LIKE: Display vehicles whose registration numbers end with 5.
SELECT vehicle_id, registration_number
FROM vehicles
WHERE registration_number LIKE '%5';

-- Q23. IN: Display vehicles belonging to owner ID 1, 2 or 3.
SELECT registration_number, owner_id
FROM vehicles
WHERE owner_id IN (1, 2, 3);

-- Q24. NOT IN: Display parking slots that are not Available or Occupied.
SELECT slot_id, slot_number, slot_status
FROM parking_slots
WHERE slot_status NOT IN ('Available', 'Occupied');

-- Q25. Display parking sessions that are currently Active.
SELECT session_id, vehicle_id, slot_id, status
FROM parking_sessions
WHERE status = 'Active';

-- Q26. Display violations having a fine amount greater than or equal to 500.
SELECT violation_id, violation_type, fine_amount
FROM violations
WHERE fine_amount >= 500;


-- =========================================================
-- 3. SORTING, LIMIT AND DISTINCT
-- =========================================================

-- Q27. Display owners in alphabetical order.
SELECT owner_name
FROM owners
ORDER BY owner_name ASC;

-- Q28. Display parking rates in descending order.
SELECT area_id, type_id, hourly_rate
FROM parking_rates
ORDER BY hourly_rate DESC;

-- Q29. Display the top 3 highest payment amounts.
SELECT payment_id, amount
FROM payments
ORDER BY amount DESC
LIMIT 3;

-- Q30. Display parking slots in ascending order of slot number.
SELECT slot_id, slot_number, area_id
FROM parking_slots
ORDER BY slot_number ASC;

-- Q31. Display different vehicle type IDs without repeats.
SELECT DISTINCT type_id
FROM vehicles
ORDER BY type_id;


-- =========================================================
-- 4. DATA COMMANDS
-- INSERT, UPDATE, DELETE, ALTER, RENAME, DROP
-- Practising on a copy of the owners table
-- =========================================================

-- Q32. Create a practice copy of the owners table.
DROP TABLE IF EXISTS practice_owners;

CREATE TABLE practice_owners AS
SELECT * FROM owners;

SELECT * FROM practice_owners;


-- Q33. INSERT: Add a new owner to the practice table.
INSERT INTO practice_owners
(owner_id, owner_name, phone, email, address)
VALUES
(999, 'Practice Owner', '9876543210', 'practice@gmail.com', 'Practice Address');

SELECT * FROM practice_owners
WHERE owner_id = 999;


-- Q34. UPDATE: Change the email address of the practice owner.
UPDATE practice_owners
SET email = 'updated_practice@gmail.com'
WHERE owner_id = 999;

SELECT owner_name, email
FROM practice_owners
WHERE owner_id = 999;


-- Q35. UPDATE: Change the phone number of owners with owner ID less than 5.
UPDATE practice_owners
SET phone = '9999999999'
WHERE owner_id < 5;

SELECT owner_id, owner_name, phone
FROM practice_owners
WHERE owner_id < 5;


-- Q36. DELETE: Remove the practice owner.
DELETE FROM practice_owners
WHERE owner_id = 999;

SELECT * FROM practice_owners
WHERE owner_id = 999;


-- Q37. ALTER TABLE: Add a new column.
ALTER TABLE practice_owners
ADD COLUMN owner_status VARCHAR(20) DEFAULT 'Active';

SELECT owner_id, owner_name, owner_status
FROM practice_owners
LIMIT 5;


-- Q38. RENAME COLUMN: Rename owner_status to status.
ALTER TABLE practice_owners
RENAME COLUMN owner_status TO status;

SELECT owner_id, owner_name, status
FROM practice_owners
LIMIT 5;


-- Q39. RENAME TABLE: Rename practice_owners
-- to practice_owner_records.
RENAME TABLE practice_owners
TO practice_owner_records;

SHOW TABLES;


-- Q40. DROP TABLE: Delete the practice table.
DROP TABLE practice_owner_records;

SHOW TABLES;

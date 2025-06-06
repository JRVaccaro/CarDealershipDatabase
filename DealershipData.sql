DROP DATABASE IF EXISTS DealershipData;

CREATE DATABASE DealershipData;

USE DealershipData;

DROP TABLE IF EXISTS lease_contracts;
DROP TABLE IF EXISTS sales_contracts;
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS vehicles;
DROP TABLE IF EXISTS dealerships; 

CREATE TABLE dealerships (
dealership_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
address VARCHAR(50) NOT NULL,
phone VARCHAR(12)NOT NULL
);

CREATE TABLE vehicles(
VIN VARCHAR(17) PRIMARY KEY,
make VARCHAR(50) NOT NULL,
model VARCHAR(50) NOT NULL,
year INT NOT NULL,
sold BOOLEAN NOT NULL, 
color VARCHAR(50) NOT NULL,
vehicleType VARCHAR(50) NOT NULL,
odometer INT NOT NULL,
price DOUBLE NOT NULL
);

CREATE TABLE inventory(
dealership_id int NOT NULL,
VIN VARCHAR(17) NOT NULL,
FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

CREATE TABLE sales_contracts(
contract_id INT auto_increment primary key,
VIN VARCHAR(17) NOT NULL,
sale_date DATE NOT NULL,
price DECIMAL (10,2) NOT NULL,
FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

CREATE TABLE lease_contracts(
contract_id int auto_increment primary key,
VIN VARCHAR(17) NOT NULL,
lease_start DATE NOT NULL,
lease_end DATE NOT NULL,
monthly_payment DECIMAL(10,2) NOT NULL,
FOREIGN KEY (VIN) REFERENCES VEHICLES(VIN)
);

INSERT INTO dealerships(name, address, phone) VALUES
('Pallet Town Motors', '123 Route 1', '555-PIKA-001'),
('Cerulean City Autos', '456 Water St', '555-SSSS-002'),
('Lavender Town Rides', '789 Ghost Ave', '555-HAUN-003'),
('Vermilion Speedsters', '101 Port Rd', '555-CHAR-004');

INSERT INTO vehicles (VIN, Make, model, year, sold, color, vehicleType, odometer, price) VALUES
('POKEMON000000001', 'PokeMobile', 'Pikachu', 2023, FALSE, 'Yellow', 'Electric', 500, 15000.00),
('POKEMON000000002', 'PokeMobile', 'Charmander', 2022, TRUE, 'Red', 'Fire', 12000, 14000.00),
('POKEMON000000003', 'PokeMobile', 'Squirtle', 2021, FALSE, 'Blue', 'Water', 8000, 13500.00),
('POKEMON000000004', 'PokeMobile', 'Bulbasaur', 2020, TRUE, 'Green', 'Grass', 20000, 13000.00),
('POKEMON000000005', 'PokeMobile', 'Eevee', 2023, FALSE, 'Brown', 'Normal', 1500, 16000.00);

INSERT INTO inventory (dealership_id, VIN) VALUES
(1, 'POKEMON000000001'),
(2, 'POKEMON000000002'),
(3, 'POKEMON000000003'),
(4, 'POKEMON000000004'),
(4, 'POKEMON000000005');

INSERT INTO sales_contracts (VIN, sale_date, price) VALUES
('POKEMON000000002', '2024-01-10', 13800.00),
('POKEMON000000004', '2023-12-15', 12800.00);

INSERT INTO lease_contracts (VIN, lease_start, lease_end, monthly_payment) VALUES
('POKEMON000000001', '2024-02-01', '2027-02-01', 350.00),
('POKEMON000000003', '2024-03-15', '2027-03-15', 330.00),
('POKEMON000000005', '2024-04-01', '2027-04-01', 370.00);


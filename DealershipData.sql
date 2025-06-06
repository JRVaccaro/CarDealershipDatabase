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
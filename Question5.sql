-- Question 5 Find all dealerships that have a certain car type

USE DealershipData;

SELECT *
FROM dealerships
JOIN Inventory ON dealerships.dealership_id = inventory.dealership_id
JOIN vehicles on inventory.VIN = vehicles.vin
WHERE vehicles.vehicleType = 'Fire';
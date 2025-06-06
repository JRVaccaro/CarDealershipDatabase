-- Question 2 Find all Vehicles for a specfic dealership

USE DealershipData;

SELECT * 
FROM vehicles
JOIN inventory ON vehicles.VIN = inventory.VIN
WHERE inventory.dealership_id = 4;


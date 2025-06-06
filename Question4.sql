-- Question 4 Find the dealership where a certain car is located, by vin

USE DealershipData;

SELECT * 
FROM dealerships
JOIN inventory ON dealerships.dealership_id = inventory.dealership_id
WHERE VIN = 'POKEMON000000002';
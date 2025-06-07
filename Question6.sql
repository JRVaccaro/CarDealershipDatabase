-- Question 6 Get all sales information for a specific dealer for a specific date range

USE DealershipData; 

SELECT *
FROM  sales_contracts
JOIN inventory ON sales_contracts.VIN = inventory.vin
JOIN dealerships ON inventory.dealership_id = dealerships.dealership_id
WHERE dealerships.name = 'Pallet Town Motors'
AND sale_date BETWEEN '2023-12-15' AND '2024-01-10';

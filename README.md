# CarDealershipDatabase

## Interesting Code Snippet
This query pulls all the sales made by Pallet Town Motors during a specific time period. It’s interesting because it shows how you can use JOINs to connect multiple tables and filter the results in a really specific way.
We’re combining data from three different tables:
- sales_contracts (where we store the sales info),
- inventory (which tells us which dealership had which vehicle),
- and dealerships (to find the actual name of the dealer).

Then we filter by date using BETWEEN to only show sales between '2023-12-15' and '2024-01-10'.

-- Question 6 Get all sales information for a specific dealer for a specific date range

USE DealershipData; 

SELECT *
FROM  sales_contracts
JOIN inventory ON sales_contracts.VIN = inventory.vin
JOIN dealerships ON inventory.dealership_id = dealerships.dealership_id
WHERE dealerships.name = 'Pallet Town Motors'
AND sale_date BETWEEN '2023-12-15' AND '2024-01-10';

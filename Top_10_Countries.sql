SELECT 	
	D.country, 
	COUNT(A.customer_id) AS number_of_customers
FROM customer A	
INNER JOIN address B ON A.address_id = B.address_id	
INNER JOIN city C ON B.city_id = C.city_id	
INNER JOIN country D on C.country_id = D.country_id	
GROUP BY country 	
ORDER BY number_of_customers DESC	
LIMIT 10;	

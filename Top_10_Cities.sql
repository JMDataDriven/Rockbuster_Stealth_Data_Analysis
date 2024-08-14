SELECT 	
	D.country,
	C.city,
	COUNT(A.customer_id) AS number_of_customers
FROM customer A	
INNER JOIN address B ON A.address_id = B.address_id	
INNER JOIN city C ON B.city_id = C.city_id	
INNER JOIN country D ON C.country_id = D.country_id	
WHERE	
	D.country IN (
	SELECT D.country 
	FROM customer A
	INNER JOIN address B ON A.address_id = B.address_id
	INNER JOIN city C ON B.city_id = C.city_id
	INNER JOIN country D ON C.country_id = D.country_id
	GROUP BY D.country
	ORDER BY count(A.customer_id) DESC
	LIMIT 10)
GROUP BY 	
	D.country, C.city
	ORDER BY count(A.customer_id) DESC
LIMIT 10;	

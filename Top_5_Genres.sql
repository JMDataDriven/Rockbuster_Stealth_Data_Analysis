SELECT	
	cat.name,
	COUNT(rental_id) AS number_of_rentals
FROM category cat	
INNER JOIN film_category film_cat ON cat.category_id = film_cat.category_id	
INNER JOIN inventory inv ON film_cat.film_id = inv.film_id	
INNER JOIN rental rent ON inv.inventory_id = rent.inventory_id	
INNER JOIN customer cust ON rent.customer_id = cust.customer_id	
INNER JOIN address addr ON cust.address_id = addr.address_id	
INNER JOIN city city ON addr.city_id = city.city_id	
INNER JOIN country cntry ON city.country_id = cntry.country_id	
WHERE cntry.country='United States'	
GROUP BY cat.name	
ORDER BY count(rental_id) desc	
LIMIT 5;	

SELECT cust.customer_id, ctry.country, city.city
FROM customer cust
INNER JOIN address addr ON cust.address_id = addr.address_id 
INNER JOIN city city ON addr.city_id = city.city_id
INNER JOIN country ctry ON city.country_id = ctry.country_id

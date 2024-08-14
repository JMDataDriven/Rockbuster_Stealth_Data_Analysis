SELECT A.customer_id, A.first_name, A.last_name, D.country, C.city, SUM(E.amount) AS total_amount_paid
FROM customer A
INNER JOIN address B on A.address_id = B.address_id
INNER JOIN city C on B.city_id = C.city_id 
INNER JOIN country D ON C.country_id = D.country_id
INNER JOIN payment E ON A.customer_id = E.customer_id
WHERE
  C.city IN (
  SELECT C.city
  FROM customer A
  INNER JOIN address B on A.address_id = B.address_id
  INNER JOIN city C on B.city_id = C.city_id 
  INNER JOIN country D ON C.country_id = D.country_id
  WHERE
    D.country IN (
      SELECT D.country 
      FROM customer A
      INNER JOIN address B on A.address_id = B.address_id
      INNER JOIN city C on B.city_id = C.city_id 
      INNER JOIN country D ON C.country_id = D.country_id
      GROUP BY D.country
      ORDER BY count(A.customer_id) DESC
      LIMIT 10)
  GROUP BY 
    D.country, C.city 
    ORDER BY count(A.customer_id) DESC
    LIMIT 10)
GROUP BY A.customer_id, D.country, C.city 
ORDER BY SUM(E.amount) DESC
LIMIT 5;

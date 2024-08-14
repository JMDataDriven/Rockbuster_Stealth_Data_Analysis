SELECT C.name AS film_genre, SUM(G.amount) AS genre_total_revenue
FROM film A
INNER JOIN film_category FC ON A.film_id = FC.film_id
INNER JOIN category C ON FC.category_id = C.category_id
INNER JOIN inventory E ON A.film_id = E.film_id
INNER JOIN rental F ON E.inventory_id = F.inventory_id
INNER JOIN payment G ON F.rental_id = G.rental_id
GROUP BY C.name
ORDER BY sum(G.amount) DESC

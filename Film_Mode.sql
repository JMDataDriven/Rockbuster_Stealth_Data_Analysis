SELECT 	
	MODE () WITHIN GROUP (ORDER BY film_id) AS modal_film_id,
	MODE () WITHIN GROUP (ORDER BY title) AS modal_title, 
	MODE () WITHIN GROUP (ORDER BY description) AS modal_description,
	MODE () WITHIN GROUP (ORDER BY release_year) AS modal_release_year, 
	MODE () WITHIN GROUP (ORDER BY language_id) AS modal_language_id,
	MODE () WITHIN GROUP (ORDER BY rating) AS modal_rating, 
	MODE () WITHIN GROUP (ORDER BY last_update) AS modal_last_update,
	MODE () WITHIN GROUP (ORDER BY special_features) AS modal_special_features,
	MODE () WITHIN GROUP (ORDER BY fulltext) AS modal_fulltext
FROM film;	

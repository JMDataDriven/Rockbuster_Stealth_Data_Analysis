SELECT 	
	MODE () WITHIN GROUP (ORDER BY customer_id) AS modal_customer_id,
	MODE () WITHIN GROUP (ORDER BY store_id) AS modal_store_id,
	MODE () WITHIN GROUP (ORDER BY first_name) AS modal_first_name, 
	MODE () WITHIN GROUP (ORDER BY last_name) AS modal_last_name,
	MODE () WITHIN GROUP (ORDER BY email) AS modal_email, 
	MODE () WITHIN GROUP (ORDER BY address_id) AS modal_address_id,
	MODE () WITHIN GROUP (ORDER BY activebool) AS modal_activebool,
	MODE () WITHIN GROUP (ORDER BY create_date) AS modal_create_date,
	MODE () WITHIN GROUP (ORDER BY last_update) AS modal_last_update,
	MODE () WITHIN GROUP (ORDER BY active) AS modal_active
FROM customer;	

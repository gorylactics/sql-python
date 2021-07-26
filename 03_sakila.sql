use sakila;

SELECT customer.first_name, customer.last_name, customer.email, address.address  FROM customer JOIN address ON customer.address_id = address.address_id  WHERE city_id = 312;

SELECT film.title, film.description, film.release_year, film.rating, film.special_features from film  JOIN film_category ON film.film_id = film_category.film_id JOIN category ON film_category.category_id = category.category_id  WHERE category.name = 'Comedy';

SELECT film.title from film JOIN film_actor ON film.film_id = film_actor.film_id  WHERE film_actor.actor_id = 5;

SELECT customer.first_name, customer.last_name, customer.email, address.address FROM customer JOIN address ON customer.address_id = address.address_id JOIN store ON customer.store_id = store.store_id  WHERE address.city_id IN(1, 42, 312, 459) AND store.store_id = 1;

SELECT film.title, film.description, film.release_year, film.rating, film.special_features FROM film JOIN film_actor ON film.film_id = film_actor.film_id WHERE film_actor.actor_id = 15 AND (film.rating LIKE 'G') AND (film.special_features LIKE '%behind the scenes%');

SELECT film.film_id, film.title, actor.actor_id, actor.first_name FROM film JOIN film_actor ON film.film_id = film_actor.film_id JOIN actor ON film_actor.actor_id = actor.actor_id WHERE film.film_id = 369;

SELECT film.title, film.release_year,film.description , film.rating, film.special_features, category.name FROM film JOIN film_category ON film.film_id = film_category.film_id JOIN category ON category.category_id = film_category.category_id WHERE film.rental_rate = 2.99 AND category.category_id = 7;

SELECT film.title, CONCAT(actor.first_name, ' ' , actor.last_name) AS NombreCompleto FROM actor JOIN film_actor ON actor.actor_id = film_actor.actor_id JOIN film ON film_actor.film_id = film.film_id JOIN film_category ON film_category.film_id = film.film_id JOIN category ON category.category_id = film_category.category_id WHERE category.name = 'action' AND CONCAT(actor.first_name,' ', actor.last_name) LIKE 'SANDRA KILMER' ;
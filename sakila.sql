use sakila;

-- 1:
select first_name, last_name, email, address 
from customer join address on customer.address_id = address.address_id
where city_id = 312;

-- 2:
select title, description, release_year, rating, special_features, category.name as genre
from film join film_category on film.film_id = film_category.film_id
join category on film_category.category_id = category.category_id
where category.name = 'Comedy';

-- 3:
select title, description, release_year
from film join film_actor on film.film_id = film_actor.film_id
where actor_id = 5;

-- 4:
select first_name, last_name, email, address
from customer join address on customer.address_id = address.address_id
where address.city_id in (1, 42, 312, 459) and store_id = 1;

-- 5:
select title, description, release_year, rating, special_features
from film join film_actor on film.film_id = film_actor.film_id
where actor_id = 15 and rating = 'G' and special_features like '%Behind the Scenes%';

-- 6:
select first_name, last_name, actor.last_update
from actor join film_actor on actor.actor_id = film_actor.actor_id
where film_id = 369;

-- 7:
select title, description, release_year, rating, special_features, category.name as genre
from film join film_category on film.film_id = film_category.film_id
join category on film_category.category_id = category.category_id
where category.name = 'Drama' and rental_rate = 2.99;

-- 8:
select title, description, release_year, rating, special_features, 
	category.name as genre, concat(first_name, ' ', last_name) as actor_name
from film join film_actor on film.film_id = film_actor.film_id
join actor on actor.actor_id = film_actor.actor_id
join film_category on film_category.film_id = film.film_id
join category on film_category.category_id = category.category_id
where category.name = 'Action' and first_name = 'SANDRA' and last_name = 'KILMER';
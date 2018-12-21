/*1. What query would you run to get all the customers inside city_id = 312? Your query should 
return customer first name, last name, email, and address.*/

use sakila;
select * from address

select customer.first_name as firstname,customer.last_name as last_name,email,address,city_id
from customer
join address
on customer.address_id=address.address_id
where city_id=312;

/*2. What query would you run to get all comedy films? Your query should return film title, 
description, release year, rating, special features, and genre (category).*/
select * from film
select * from film_category
select * from category
select film.title as name,film.description,film.release_year,film.rating,film.special_features,
category.name
from film
join film_category
on film.film_id=film_category.film_id
join category
on film_category.category_id=category.category_id;

/*3. What query would you run to get all the films joined by actor_id=5? Your query should return 
the actor id, actor name, film title, description, and release year.*/
select * from actor
select * from film_actor
select * from film
select actor.actor_id as id,CONCAT(first_name,' ',last_name) as actor_name,
film.title as title, film.description as description,film.release_year
from actor
join film_actor
on actor.actor_id=film_actor.actor_id
join film
on film_actor.film_id= film.film_id
where actor.actor_id=5;
/*4. What query would you run to get all the customers in store_id = 1 and
 inside these cities (1, 42, 312 and 459)? Your query should return customer first name, 
 last name, email, and address.*/
 select * from customer
 select * from inventory
select * from address
 select customer.first_name,customer.last_name, customer.email,customer.store_id,
 address.address,address.city_id
 from address
 left join customer
 on address.address_id=customer.address_id
 where customer.store_id=1 and address.city_id=1 or address.city_id=42 or address.city_id=312
 or address.city_id=459;
 /*5. What query would you run to get all the films with a "rating = G" and "special feature = behind 
 the scenes", joined by actor_id = 15? Your query should return the film title, description,
 release year, rating, and special feature. Hint: You may use LIKE function in getting 
 the 'behind the scenes' part.*/
 
 select title,description,release_year,rating,special_features, film_actor.actor_id
 from film_actor
 left join film
 on film_actor.film_id=film.film_id
 where actor_id=15 and 
  special_features like "%behind%" and rating Like "G%";
  
  /*6. What query would you run to get all the actors that joined in the film_id = 369? 
  Your query should return the film_id, title, actor_id, and actor_name.*/
  select film.film_id,film.title,actor.actor_id,concat(actor.first_name,'',actor.last_name)as Name
 from film
 join film_actor
 on film.film_id=film_actor.film_id
 join actor
 on film_actor.actor_id=actor.actor_id
 where film.film_id=369;
 /*7. What query would you run to get all drama films with a rental rate of 2.99? Your query should 
 return film title, description, release year, rating, special features, and genre (category).*/
 select * from inventory
 select * from rental
 select * from payment
 select * from category
 select * from film
 select film.title as name,film.description,film.release_year,film.rating,film.special_features,
category.name, payment.rental_id,payment.amount
from film
 join inventory
on film.film_id=inventory.film_id
join Rental
on inventory.inventory_id=rental.inventory_id
join payment
on rental.rental_id=payment.rental_id
join film_category
on film.film_id=film_category.film_id
join category
on film_category.category_id=category.category_id
where amount=2.99;
/*what query would you run to get all the action films which are joined by Sandra Kilmer? 
your query should return film title,description, release year,rating,special features,genre, 
and actors first and last name*/

select film.title,description,release_year,rating,special_features, actor.first_name,
actor.last_name,category.name
from film
join film_actor
on film.film_id=film_actor.film_id
join actor
on film_actor.actor_id=actor.actor_id
join film_category
on film.film_id=film_category.film_id
join category
on film_category.category_id=category.category_id
where first_name="Sandra" and last_name="Kilmer"and category.name Like("Action");

 
 
 


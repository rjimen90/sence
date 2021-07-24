-- Qué consulta ejecutarías para obtener todos los clientes dentro de city_id = 312? 
-- Su consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.
select city.city_id,city.city,first_name,customer.last_name,customer.email,address.address from city
inner join address on address.city_id = city.city_id
inner join customer on customer.customer_id = address.address_id
where city.city_id = 312;
-- ¿Qué consulta harías para obtener todas las películas de comedia? 
-- Su consulta debe devolver el título de la película, la descripción, el año de estreno, la calificación, 
-- las características especiales y el género (categoría).
select film.title,film.description,film.release_year,film.rating,film.special_features,category.name from film
inner join film_category  on film_category.film_id = film.film_id
inner join category on category.category_id = film_category.category_id
where category.name = 'Comedy';
-- ¿Qué consulta harías para obtener todas las películas unidas por actor_id = 5? 
-- Su consulta debe devolver la identificación del actor, el nombre del actor, el título de la película,
-- la descripción y el año de lanzamiento.
select actor.actor_id,actor.first_name,actor.last_name,film.title,film.description,film.release_year from film
inner join film_actor on film_actor.film_id = film.film_id
inner join actor on actor.actor_id = film_actor.actor_id
where actor.actor_id = 5;
-- ¿Qué consulta ejecutaría para obtener todos los clientes en store_id = 1 y dentro de estas ciudades (1, 42, 312 y 459)?
-- Su consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.

select customer.first_name,customer.last_name,customer.email,address.address from city
inner join address on address.city_id = city.city_id
inner join customer on customer.address_id = address.address_id
where store_id = 1 in ( city.city_id = 1,city.city_id = 42,city.city_id = 312,city.city_id = 459)





-- ¿Qué consulta realizarías para obtener todas las películas con una "calificación = G" y
 -- "característica especial = detrás de escena", unidas por actor_id = 15? 
 -- Su consulta debe devolver el título de la película, la descripción, el año de lanzamiento, 
 -- la calificación y la función especial. Sugerencia: puede usar la función LIKE para obtener la parte 'detrás de escena'.
select * from film;
select film.title,film.description,film.release_year,film.rating,film.special_features,actor.actor_id from film
inner join film_actor on film_actor.film_id = film.film_id
inner join actor on actor.actor_id = film_actor.actor_id
WHERE rating = 'G' and special_features = 'Behind the Scenes' and actor.actor_id =15;

-- ¿Qué consulta harías para obtener todos los actores que se unieron en el film_id = 369? 
-- Su consulta debe devolver film_id, title, actor_id y actor_name.
select * from film
inner join film_actor on film_actor.film_id = film.film_id
inner join actor on actor.actor_id = film_actor.actor_id
where film.film_id = 369;

-- ¿Qué consulta harías para obtener todas las películas dramáticas con una tarifa de alquiler de 2.99? 
-- Su consulta debe devolver el título de la película, la descripción, el año de estreno, la calificación, 
-- las características especiales y el género (categoría).
select * from film
inner join film_category on film_category.film_id = film.film_id
inner join category on category.category_id = film_category.category_id
where rental_rate = 2.99 and category.name = 'Drama';

-- ¿Qué consulta harías para obtener todas las películas de acción a las que se une SANDRA KILMER? 
-- Su consulta debe devolver el título de la película, la descripción, el año de estreno, la calificación, 
-- las características especiales, el género (categoría) y el nombre y apellido del actor.
select film.title,film.description,film.release_year,film.rating,film.special_features,category.name,actor.first_name,actor.last_name from film
inner join film_category on film_category.film_id = film.film_id
inner join category on category.category_id = film_category.category_id
inner join film_actor on film_actor.film_id = film.film_id
inner join actor on actor.actor_id = film_actor.actor_id
WHERE actor.actor_id = 23 and category.name = 'Action'

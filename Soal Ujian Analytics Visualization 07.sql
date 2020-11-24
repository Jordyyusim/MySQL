use sakila;
select * from film_category;
select * from film;
select * from category;

select film.title, category.name, film.length from category join film_category join film
on category.category_id = film_category.category_id and
film_category.film_id = film.film_id 
where category.name = 'Comedy' order by film.length limit 10;

select * from category;

select name, count(b.film_id), avg(rental_rate) from 
category a, film_category b, film c
where a.category_id = b.category_id
and  b.film_id = c.film_id
group by a.name;

select rating, CASE 
WHEN rating LIKE 'G' THEN  'General Audiences'
WHEN rating LIKE 'PG' THEN  'Parental Guidance Suggested'
WHEN rating LIKE 'PG-13' THEN  'Parental Guidaces for Children under 13'
WHEN rating LIKE 'R' THEN  'Restricted'
WHEN rating LIKE 'NC-17' THEN  'No Children Under 17 Admitted'
END as 'keterangan'
,count(rating) as 'Jumlah Movie' from film group by rating order by rating;

select a.actor_id, first_name, last_name, count(b.actor_id) as JML_Movie
from actor a, film_actor b, film_category c
where a.actor_id = b.actor_id and
b.film_id = c.film_id
group by actor_id order by JML_Movie desc limit 10;

select * from film_actor;
select * from actor;
select * from film_category;
select * from film;
select * from category;

select a.name as 'category', count(d.film_id) from 
category a, film_category b, actor c, film_actor d 
where a.category_id = b.category_id and
b.film_id = d.film_id and
c.actor_id = d.actor_id and first_name = 'Gina'
group by category;

select a.name, e.title from 
category a, film_category b, actor c, film_actor d, film e
where a.category_id = b.category_id 
and b.film_id = e.film_id 
and c.actor_id = d.actor_id 
and e.film_id = d.film_id
and first_name = 'Gina' and a.name = 'Sci-Fi';

select * from film_actor;
select * from actor;
select * from film_category;
select * from film;
select * from category;
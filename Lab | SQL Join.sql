-- Lab | SQL Join
--  In this lab, you will be using the Sakila database of movie rentals.

-- List number of films per category.
select category.name, count(film_category.film_id) as number_of_films
from category, film_category
where category.category_id=film_category.category_id
group by category.name; 

-- Display the first and last names, as well as the address, of each staff member.
select staff.first_name, staff.last_name, address.address
from staff, address
where staff.address_id=address.address_id ; 

-- Display the total amount rung up by each staff member in August of 2005.
select staff_id, sum(amount) as total_amount
from payment
where payment_date like '2005-08-%'
group by staff_id ; 

-- List each film and the number of actors who are listed for that film.
select film_id, count(actor_id) as number_actors
from film_actor
group by film_id ; 

-- Using the tables payment and customer and the JOIN command, list the total paid by each customer. List the customers alphabetically by last name.

select payment.customer_id, sum(amount) as total_paid
from payment
right join customer on customer.customer_id=payment.customer_id
group by customer_id 
order by customer_id asc ; 
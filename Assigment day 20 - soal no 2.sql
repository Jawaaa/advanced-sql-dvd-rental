-- Soal 2.1
select 
	c.first_name as Nama_Depan,
	c.last_name as Nama_Belakang,
	p.amount as pembayaran
from 
	customer c
join 
	payment p on c.customer_id = p.customer_id 
where p.amount > 
	(select 
		avg(amount)
     from 
		payment);

-- Soal 2.2
select 
	film_id as Film_Id,
	title as Judul,
	length as Durasi_Film
from 
	film 
where length > (
	select
		avg(length)
	from film
);


-- Soa 2.3
select 
	first_name as Nama_Depan,
	last_name as Nama_Belakang
from 
	actor 
where actor_id in (
	select actor_id
	from film_actor 
	group by actor_id
	having count(film_id) = 1
);

	
	



			

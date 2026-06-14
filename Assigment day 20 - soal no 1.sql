-- Soal 1.1
select 
	first_name as Nama_Depan,
	last_name as Nama_Belakang
from 
	actor 
where 
	first_name in ('Jennifer','Nick','Ed');


-- Soal 1.2 
select 
	payment_id as Payment_ID,
	sum(amount) as Total_Pembayaran
from 
	payment 
group by 
	payment_id
having 
	sum(amount) > 5.99;


-- Soal 1.3
select 
	title as Judul_Film,
	length as Durasi_Film,
	case 
		when length > 100 then 'Over 100 menit'
		when length between 87 and 100 then '87-100 menit'
		when length between 72 and 86 then '72-86 menit'
		when length < 72 then 'Under 72 menit'		
	end as Kategori_Durasi
from film;

-- Soal 1.4 


	
	
	
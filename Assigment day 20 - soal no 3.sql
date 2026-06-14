-- Soal 3.1 RANK() : (Peringkat Tarif Sewa Tertinggi)
select 
	title as Judul_Film,
	rental_rate as Rating,
rank () over(
	order by rental_rate desc
) as peringkat_rank
from film;

-- Soal 3.2 DENSE RANK() : (Peringkat Tarif Sewa Tertinggi)
select 
	customer_id as Pelanggan_ID,
	sum(amount) as Total_Transaksi,
dense_rank () over(
	order by sum(amount) desc
) as peringkat_Dense_Rank
from payment
group by customer_id;


-- Soal 3.3 ROW NUMBER() : (Nomor Urut Film Berdasarkan Tahun Rilis)
select 
	title as Judul_film,
	release_year as Tahun_Rilis,
row_number () over(
	order by release_year asc
) as peringkat_row_number
from film;

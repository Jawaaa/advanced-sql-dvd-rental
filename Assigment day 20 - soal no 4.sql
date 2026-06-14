-- Soal 4.1
with total_transaksi_customer as(
	    -- Tahap 1: Menghitung total aktivitas rental per pelanggan
		select
			customer_id as id_pelanggan,
			count(rental_id) as total_transaksi
		from rental 
		group by customer_id
)
select  -- Tahap 2: Menyaring pelanggan yang transaksinya di atas 10 kali
	id_pelanggan,
	total_transaksi
from total_transaksi_customer
where Total_Transaksi > 10
order by total_transaksi desc;
	


-- Soal 4.2
WITH hitung_rental_film AS (
    SELECT 
        f.title AS judul_film,
        COUNT(r.rental_id) AS total_disewa
    FROM rental r
    JOIN inventory i ON r.inventory_id = i.inventory_id
    JOIN film f ON i.film_id = f.film_id
    GROUP BY f.title
)
SELECT judul_film, total_disewa
FROM hitung_rental_film
ORDER BY total_disewa DESC; -- Biar yang terbanyak muncul di paling atas

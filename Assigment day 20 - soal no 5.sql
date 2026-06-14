-- Soal 5.1
SELECT 
    title AS judul_film,
    rental_rate AS harga_sewa,
    CASE 
        WHEN rental_rate > 4 THEN 'Premium'
        WHEN rental_rate BETWEEN 2 AND 4 THEN 'Regular'
        WHEN rental_rate < 2 THEN 'Budget'
    END AS kategori_film
FROM film;


-- Soal 5.2
SELECT 
    customer_id AS id_pelanggan,
    SUM(amount) AS total_belanja,
    CASE 
        WHEN SUM(amount) > 100 THEN 'High Value Customer'
        WHEN SUM(amount) BETWEEN 50 AND 100 THEN 'Medium Value Customer'
        ELSE 'Low Value Customer' -- Sisa angka di bawah 50 otomatis masuk ke sini
    END AS kategori_pelanggan
FROM payment
GROUP BY customer_id;

USE Video_Rental_DB;

--query 1 (rental_item_fees_view used)
SELECT
    '' AS [Query 1],
    store_id,
    CONCAT(YEAR(created_date), '/', FORMAT(MONTH(created_date), '00')) [YYYY/MM],
    COUNT(*) [Number of movie rentals]
FROM rental_item_fees_view
WHERE item_category LIKE 'Movie'
GROUP BY store_id, CONCAT(YEAR(created_date), '/', FORMAT(MONTH(created_date), '00'))
ORDER BY store_id ASC, [YYYY/MM] ASC

--query 2
--(i) (rental_items_fees_view used)
SELECT
    '' AS [Query 2(i)],
    c.customer_id,
    CONCAT(first_name, ' ', last_name) customer_name,
    AVG(CAST(rented_days AS FLOAT)) [avg_rented_days]
FROM customers c
    INNER JOIN rental_item_fees_view v ON c.customer_id = v.customer_id
GROUP BY c.customer_id, CONCAT(first_name, ' ', last_name)
ORDER BY c.customer_id ASC;
--(ii) (rental_item_fees_view used)
SELECT
    '' AS [Query 2(ii)],
    m.item_id,
    movie_name,
    AVG(CAST(rented_days AS FLOAT)) [avg_rented_days]
FROM movies m
    INNER JOIN rental_item_fees_view v ON m.item_id = v.item_id
WHERE item_category LIKE 'Movie'
GROUP BY m.item_id, movie_name

--query 3
SELECT TOP 10
    '' AS [Query 3],
    m.item_id,
    movie_name,
    COUNT(*) [number_of_reservations]
FROM movies m
    INNER JOIN reservation_items r_i ON m.item_id = r_i.item_id
    INNER JOIN reservations r ON r_i.reservation_id = r.reservation_id
WHERE DATEDIFF(YEAR, created_date, GETDATE()) <= 1
GROUP BY m.item_id, movie_name
ORDER BY number_of_reservations DESC;

--query 4  (rental_item_fees_view used)
SELECT TOP 100
    '' AS [Query 4],
    c.customer_id,
    CONCAT(first_name, ' ', last_name) customer_name,
    SUM(rental_fee) rental_fees,
    SUM(overdue_fee) overdue_fees,
    SUM(overdue_fee + rental_fee) total_fees
FROM customers c
    INNER JOIN rental_item_fees_view v ON c.customer_id = v.customer_id
GROUP BY c.customer_id, CONCAT(first_name, ' ', last_name)
ORDER BY total_fees DESC

--query 5 (rental_item_fees_view used)
SELECT
    '' AS [Query 5],
    CONCAT(YEAR(return_date), '/', FORMAT(MONTH(return_date), '00')) [YYYY/MM],
    SUM(rental_fee) rental_fees,
    SUM(overdue_fee) overdue_fees,
    SUM(rental_fee + overdue_fee) total_fees
FROM rental_item_fees_view
WHERE DATEDIFF(MONTH, return_date, GETDATE()) BETWEEN 1 AND 12
GROUP BY CONCAT(YEAR(return_date), '/', FORMAT(MONTH(return_date), '00'))
ORDER BY [YYYY/MM] ASC;

--query 6 (rental_item_fees_view used)
SELECT
    '' AS [Query 6],
    c.customer_id,
    CONCAT(first_name, ' ', last_name) customer_name,
    item_category,
    SUM(overdue_fee)[Total overdue fee]
FROM customers c
    INNER JOIN rental_item_fees_view v ON c.customer_id = v.customer_id
GROUP BY c.customer_id, CONCAT(first_name, ' ', last_name), item_category
ORDER BY customer_id ASC, item_category ASC;

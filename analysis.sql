SELECT 
    category, 
    SUM(amount) AS total_revenue
FROM sales
WHERE amount > 1000              -- 1. Сначала убираем дешевые товары
GROUP BY category                -- 2. Группируем по категориям
HAVING SUM(amount) > 50000       -- 3. Оставляем только те группы, где сумма > 50 тысяч
ORDER BY total_revenue DESC;     -- 4. Сортируем результат


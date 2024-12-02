/*
Assess sales and profit performance by country and city to identify high-performing areas
 and those needing improvement.
*/

SELECT 
    country,
    City,
    SUM(profit) as total_profit,
    SUM(sales) as total_sales
FROM superstore
GROUP BY 
    country,
    city
ORDER BY total_profit DESC
LIMIT 10

/*
product categories and subcategories generate the most sales and profits
*/
SELECT
    category,
    "Sub.Category",
    SUM(total_sales) as total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS total_quantity
FROM
    superstore
GROUP BY
   category, "Sub.Category"
ORDER BY 
    total_profit DESC


/*
impact of discounts on sales and profits. 
*/
SELECT 
    "Product.Name",
    category,
    SUM(total_sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(discount) AS total_discount
FROM 
    superstore
WHERE 
    discount > 0  -- Only consider orders with discounts
GROUP BY 
    "Product.Name",
    category
ORDER BY
    total_profit DESC
LIMIT 10
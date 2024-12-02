/*
total sales, profit, and quantity sold by different dimensions
 such as Product, Category, and Segment
*/
SELECT 
    "Product.Name",
    country,
    year,

    SUM(total_sales) AS total_sales, 
    SUM(profit) AS total_profit, 
    SUM(quantity) AS total_quantity
FROM 
    superstore
GROUP BY 
    "Product.Name",
    country,
    year
ORDER BY 
    total_profit DESC
    LIMIT 10;
    
    SELECT 
    segment,  
    SUM(total_sales) AS total_sales, 
    SUM(profit) AS total_profit, 
    SUM(quantity) AS total_quantity
FROM 
    superstore
GROUP BY 
    segment
ORDER BY 
    total_profit DESC;

    SELECT 
    category,  
    SUM(total_sales) AS total_sales, 
    SUM(profit) AS total_profit, 
    SUM(quantity) AS total_quantity
FROM 
    superstore
GROUP BY 
    category
ORDER BY 
    total_profit DESC
    LIMIT 10
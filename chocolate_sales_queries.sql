– Creating the first table to show all the data from the imported CSV 
SELECT * FROM ChocolateSales

– Total Sales By Country, ordered highest to lowest
SELECT country, SUM(`clean_amount`) AS Total_Sales
FROM ChocolateSales
GROUP BY country
ORDER BY Total_Sales DESC

– Total Sales By Country and product, ordered highest to lowest
SELECT country, product, SUM(`clean_amount`) AS Total_Sales
FROM ChocolateSales
GROUP BY country, product
ORDER BY Total_sales DESC

– Total Sales BY Country, showing any figure over 10000
SELECT country, SUM(`clean_amount`) AS Total_Sales
FROM ChocolateSales
GROUP BY country
HAVING SUM(clean_amount) > 10000;

– Average Sale By Country 
SELECT country, ROUND(AVG(clean_amount), 2) AS Avg_sale
FROM ChocolateSales
GROUP BY country

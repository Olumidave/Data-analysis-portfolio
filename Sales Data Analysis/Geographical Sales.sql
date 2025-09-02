SELECT 
    Country,
    SUM(Quantity) AS TotalUnitSold
FROM 
    [master].[dbo].[Sales Record]
WHERE
  Quantity > 0
GROUP BY 
    Country
ORDER BY 
	TotalUnitSold DESC;



SELECT 
    Country,
    SUM(Quantity * Price) AS TotalRevenue
FROM 
    [master].[dbo].[Sales Record]
WHERE
  Quantity > 0
GROUP BY 
    Country
ORDER BY 
	TotalRevenue DESC;


SELECT 
    Country,
	YEAR(InvoiceDate) AS SalesYear,
    SUM(Quantity * Price) AS YearlySales
FROM 
    [master].[dbo].[Sales Record]
WHERE
  Quantity > 0
GROUP BY 
    Country, YEAR(InvoiceDate)
ORDER BY 
	Country, SalesYear;
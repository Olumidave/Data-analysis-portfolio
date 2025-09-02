SELECT 
    DISTINCT(Description),
    SUM(Quantity) AS Totalunitsold
FROM 
    [master].[dbo].[Sales Record]
GROUP BY 
    Description
ORDER BY 
    Totalunitsold DESC;


SELECT 
    Description,
	MONTH(InvoiceDate) AS SalesMonth,
    SUM(Quantity * Price) AS TotalRevenue
FROM 
    [master].[dbo].[Sales Record]
GROUP BY 
    Description, MONTH(InvoiceDate)
ORDER BY 
    SalesMonth, TotalRevenue DESC;


SELECT
    DISTINCT(Description),
	YEAR(InvoiceDate) AS SalesYear,
    SUM(Quantity) AS Totalunitsold
FROM 
    [master].[dbo].[Sales Record]
WHERE Quantity > 0
GROUP BY 
    Description, YEAR(InvoiceDate)
ORDER BY 
    SalesYear, Totalunitsold ASC;


SELECT 
    Description,
    SUM(Quantity * Price) AS TotalRevenue
FROM 
    [master].[dbo].[Sales Record]
GROUP BY 
    Description
ORDER BY 
    TotalRevenue ASC;
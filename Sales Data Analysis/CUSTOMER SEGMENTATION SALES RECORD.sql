SELECT *
  FROM [master].[dbo].[Sales Record]

--//CUSTOMER SEGMENTATION//
--//HIGHVALUED CUSTOMERS//
SELECT
    [Customer ID],
    SUM(Quantity * Price) AS TotalSpent
FROM 
    [master].[dbo].[Sales Record]

WHERE 
    [Customer ID] IS NOT NULL
GROUP BY 
    [Customer ID]
ORDER BY 
    TotalSpent DESC;

SELECT TOP
 10 *
 FROM
 [master].[dbo].[Sales Record]

 
 --//REPEATED BUYERS//

SELECT 
 [Customer ID],
    COUNT(DISTINCT Invoice) AS PurchaseCount
FROM 
    [master].[dbo].[Sales Record]
WHERE 
    [Customer ID] IS NOT NULL
GROUP BY 
    [Customer ID]
HAVING 
    COUNT(DISTINCT Invoice) > 1
ORDER BY 
    PurchaseCount DESC;


--//SEASONAL SHOPPERS//

SELECT 
    [Customer ID],
    MONTH(InvoiceDate) AS PurchaseMonth,
    COUNT(*) AS TotalPurchases
FROM 
    [master].[dbo].[Sales Record]
WHERE 
    [Customer ID] IS NOT NULL
GROUP BY 
    [Customer ID], MONTH(InvoiceDate)
ORDER BY 
    [Customer ID], PurchaseMonth;

SELECT 
    [Customer ID],
    DATEPART(QUARTER, InvoiceDate) AS PurchaseQuarter,
    COUNT(*) AS TotalPurchases
FROM 
    [master].[dbo].[Sales Record]
WHERE 
    [Customer ID] IS NOT NULL
GROUP BY 
    [Customer ID], DATEPART(QUARTER, InvoiceDate)
ORDER BY 
    [Customer ID], PurchaseQuarter;




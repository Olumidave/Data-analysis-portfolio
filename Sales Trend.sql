SELECT 
    MONTH(InvoiceDate) AS SalesMonth,
    SUM(Quantity * Price) AS MonthlySales
FROM 
    [master].[dbo].[Sales Record]
GROUP BY 
    MONTH(InvoiceDate)
ORDER BY 
    SalesMonth;



SELECT 
    DATEPART(QUARTER, InvoiceDate) AS SalesQuarter,
    SUM(Quantity * Price) AS QuarterlySales
FROM 
    [master].[dbo].[Sales Record]
GROUP BY 
    DATEPART(QUARTER, InvoiceDate)
ORDER BY 
    SalesQuarter;



SELECT 
    YEAR(InvoiceDate) AS SalesYear,
    SUM(Quantity * Price) AS YearlySales
FROM 
    [master].[dbo].[Sales Record]
GROUP BY 
    YEAR(InvoiceDate)
ORDER BY 
    YearlySales;



SELECT 
    YEAR(InvoiceDate) AS SalesYear,
    MONTH(InvoiceDate) AS SalesMonth,
    SUM(Quantity * Price) AS MonthlySales
FROM 
    [master].[dbo].[Sales Record]
GROUP BY 
    YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY 
    SalesYear , MonthlySales;



SELECT 
    YEAR(InvoiceDate) AS SalesYear,
    DATEPART(QUARTER, InvoiceDate) AS SalesQuarter,
    SUM(Quantity * Price) AS QuarterlySales
FROM 
    [master].[dbo].[Sales Record]
GROUP BY 
    YEAR(InvoiceDate), DATEPART(QUARTER, InvoiceDate)
ORDER BY 
    Salesyear, SalesQuarter;
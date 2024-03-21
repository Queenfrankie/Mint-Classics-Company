SELECT ProductName, BuyPrice, SUM(QuantityOrdered) AS TotalSales
FROM Products
JOIN OrderDetails ON Products.ProductCode = OrderDetails.ProductCode
GROUP BY ProductName, BuyPrice
ORDER BY TotalSales DESC
LIMIT 1000;
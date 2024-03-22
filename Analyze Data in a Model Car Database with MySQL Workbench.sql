SELECT ProductName, ProductName, QuantityInStock, BuyPrice
FROM Products;
SELECT OrderNumber, requiredDate, OrderDate, ShippedDate
FROM Orders;
SELECT customerNumber
FROM customers;
SELECT OrderNumber, ProductCode, SUM(QuantityOrdered) AS TotalSales
FROM OrderDetails
GROUP BY OrderNumber, ProductCode
ORDER BY TotalSales DESC
LIMIT 0, 1000;
SELECT BuyPrice, SUM(QuantityOrdered) AS TotalSales
FROM Products
JOIN OrderDetails ON Products.ProductCode = OrderDetails.ProductCode
GROUP BY BuyPrice
ORDER BY BuyPrice;
SELECT SUM(QuantityInStock * 0.05) AS TotalQuantityReduction
FROM Products;
SELECT SUM(QuantityOrdered) AS TotalSalesAfterReduction
FROM OrderDetails;
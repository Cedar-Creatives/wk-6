-- Select the database to work with
USE salesdb;

-- Question 1: INNER JOIN - Get employee details with office info
-- Only shows employees who have valid office assignments
SELECT 
    e.firstName,
    e.lastName, 
    e.email,
    e.officeCode
FROM employees AS e
INNER JOIN offices AS o ON e.officeCode = o.officeCode;

-- Question 2: LEFT JOIN - Get all products with product line info
-- Shows all products, even if product line details are missing
SELECT 
    p.productName,
    p.productVendor,
    p.productLine
FROM products AS p
LEFT JOIN productlines AS pl ON p.productLine = pl.productLine;

-- Question 3: RIGHT JOIN - Get first 10 orders with customer info
-- Shows all orders, even if customer details are missing
SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers AS c
RIGHT JOIN orders AS o ON c.customerNumber = o.customerNumber
LIMIT 10;

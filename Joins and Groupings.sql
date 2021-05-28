
-- Question 1
SELECT c.customerName AS 'Customer Name', CONCAT(e.lastName, e.firstName) AS 'Sales Rep'
FROM customers c INNER JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber
ORDER BY c.customerName ASC;

-- Question 2
SELECT p.productName AS 'Product Name', o.quantityOrdered AS 'Total # Ordered', o.quantityOrdered * p.buyPrice AS 'Total Sale'
FROM products p INNER JOIN orderdetails o USING(productCode)
GROUP BY p.productName
ORDER BY 'Total Sale' DESC;

-- Question 3
SELECT o.`status` AS 'Order Status', d.quantityOrdered AS '# Orders'
FROM orderdetails d INNER JOIN orders o USING(orderNumber)
GROUP BY o.`status` ASC;

-- Question 4
SELECT l.productLine AS 'Product Line', SUM(quantityOrdered) AS '# Sold'
FROM productlines l LEFT JOIN products p USING(productLine)
LEFT JOIN orderdetails o USING (productCode)
GROUP BY l.productLine DESC;

-- Question 5
SELECT CONCAT(e.lastName, e.firstName) AS 'Sales Rep'
FROM employees e LEFT JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
LEFT JOIN orders o USING(customerNumber)
GROUP BY e.employeeNumber; 










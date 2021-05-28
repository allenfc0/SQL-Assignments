-- Question 1
SELECT p.productName AS 'Name', p.productLine AS 'Product Line', p.buyPrice AS 'Buy Price'
FROM products p
ORDER BY p.buyPrice DESC;


-- Question 2
SELECT c.contactFirstName AS 'First Name', c.contactLastName AS 'Last Name', c.city AS 'City'
FROM customers c
WHERE country = 'Germany'
ORDER BY c.contactLastName ASC;


-- Question 3
SELECT distinct o.`status`
FROM orders o
ORDER BY o.`status` ASC;


-- Question 4
SELECT *
FROM payments p
WHERE p.paymentDate >= '2005-1-1'
ORDER BY p.paymentDate ASC;


-- Question 5
SELECT e.lastName, e.firstName, e.email, e.jobTitle
FROM employees e, offices off
WHERE e.officeCode = off.officeCode AND off.city = 'San Francisco'
ORDER BY e.lastName;


-- Question 6
SELECT p.productName, p.productLine, p.productScale, p.productVendor
FROM products p
WHERE p.productLine = 'Classic Cars' OR p.productLine = 'Vintage Cars'
ORDER BY p.productLine DESC, p.productName ASC;
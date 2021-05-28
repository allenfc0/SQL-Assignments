

-- Question 1
SELECT p.NAME AS 'Product', p.PRODUCT_TYPE_CD AS 'Type'
FROM product p;


-- Question 2
SELECT b.NAME, b.CITY, e.LAST_NAME, e.TITLE
FROM branch b INNER JOIN employee e ON b.BRANCH_ID = e.ASSIGNED_BRANCH_ID;


-- Question 3
SELECT DISTINCT e.TITLE
FROM employee e;


-- Question 4
SELECT e.LAST_NAME, e.TITLE, o.LAST_NAME, o.TITLE
FROM employee e INNER JOIN officer o ON e.SUPERIOR_EMP_ID = o.OFFICER_ID;

-- Question 5
SELECT a.PRODUCT_CD, a.AVAIL_BALANCE, i.LAST_NAME
FROM `account` a LEFT JOIN product p USING(PRODUCT_CD)
LEFT JOIN individual i USING (CUST_ID);

-- Question 6
SELECT *
FROM acc_transaction t LEFT JOIN `account` a USING(ACCOUNT_ID)
LEFT JOIN individual i USING(CUST_ID)
WHERE i.LAST_NAME LIKE 't%';
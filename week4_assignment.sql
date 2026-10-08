-- Week 4 Database Assignment
-- Advanced SQL Queries and Aggregations

-- Question 1
SELECT paymentDate, SUM(amount) AS total_amount
FROM sales.payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Question 2
SELECT customerName, country, AVG(creditLimit) AS average_credit_limit
FROM sales.customers
GROUP BY customerName, country;

-- Question 3
SELECT productCode, quantityOrdered,
       SUM(quantityOrdered * priceEach) AS total_price
FROM sales.orderdetails
GROUP BY productCode, quantityOrdered;

-- Question 4
SELECT checkNumber, MAX(amount) AS highest_amount
FROM sales.payments
GROUP BY checkNumber;

USE salesdb;
-- fetch data(question1a) 
SELECT 
      lastName,
      email,
      officeCode
FROM employees;


-- INNER JOIN(question1b)
SELECT firstName, lastName, email
FROM employees
INNER JOIN offices
USING (officeCode);

-- RETRIEVE DATA(question2a)
SELECT 
      productName,
      productVendor,
      productLine
FROM products;

-- LEFT JOIN(question2b)
SELECT 
      productCode,
      productName,
      productLine
FROM products 
LEFT JOIN productlines 
USING (productLine);

-- RETRIEVE DATA(question3a)
SELECT 
      orderDate,
      shippedDate,
      status,
      customerNumber
FROM orders
LIMIT 10;

-- RIGHT JOIN(question3b) 
SELECT customerNumber, customerName, phone, orderDate, orderNumber
FROM customers
RIGHT JOIN orders 
USING(customerNumber)
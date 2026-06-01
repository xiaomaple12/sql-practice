-- JOIN: show users and their orders
SELECT 
    users.name AS user_name,
    orders.product_name AS product,
    orders.amount AS order_amount
FROM users
JOIN orders
ON users.id = orders.user_id;

-- JOIN + WHERE: find Amy's orders
SELECT 
    users.name AS user_name,
    orders.product_name AS product,
    orders.amount AS order_amount
FROM users
JOIN orders
ON users.id = orders.user_id
WHERE users.name = 'Amy';

-- JOIN + COUNT + GROUP BY: count orders by user
SELECT 
    users.name AS user_name,
    COUNT(orders.id) AS order_count
FROM users
JOIN orders
ON users.id = orders.user_id
GROUP BY users.name;

-- LEFT JOIN: show all users, including users without orders
SELECT 
    users.name AS user_name,
    orders.product_name AS product
FROM users
LEFT JOIN orders
ON users.id = orders.user_id;

-- LEFT JOIN + IS NULL: find users without orders
SELECT 
    users.name AS user_name,
    orders.product_name AS product
FROM users
LEFT JOIN orders
ON users.id = orders.user_id
WHERE orders.id IS NULL;

-- JOIN + SUM + GROUP BY: calculate total order amount by user
SELECT 
    users.name AS user_name,
    SUM(orders.amount) AS total_amount
FROM users
JOIN orders
ON users.id = orders.user_id
GROUP BY users.name;

-- JOIN + AVG + GROUP BY: calculate average order amount by user
SELECT 
    users.name AS user_name,
    AVG(orders.amount) AS average_amount
FROM users
JOIN orders
ON users.id = orders.user_id
GROUP BY users.name;
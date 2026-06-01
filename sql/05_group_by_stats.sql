-- COUNT: count all users
SELECT COUNT(*) AS total_users
FROM users;

-- COUNT + WHERE: count active users
SELECT COUNT(*) AS active_count
FROM users
WHERE status = 'active';

-- GROUP BY: count users by status
SELECT status, COUNT(*) AS user_count
FROM users
GROUP BY status;

-- GROUP BY + ORDER BY: count users by status and sort by count
SELECT status, COUNT(*) AS user_count
FROM users
GROUP BY status
ORDER BY user_count DESC;

-- GROUP BY + HAVING: show only groups with 2 or more users
SELECT status, COUNT(*) AS user_count
FROM users
GROUP BY status
HAVING COUNT(*) >= 2;

-- SUM: calculate total order amount
SELECT SUM(amount) AS total_amount
FROM orders;

-- AVG: calculate average order amount
SELECT AVG(amount) AS average_amount
FROM orders;
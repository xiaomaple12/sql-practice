-- WHERE: find active users
SELECT * FROM users
WHERE status = 'active';

-- AND: find active user with specific email
SELECT * FROM users
WHERE status = 'active'
AND email = 'amy@gmail.com';

-- OR: find users named Amy or John
SELECT * FROM users
WHERE name = 'Amy'
OR name = 'John';

-- LIKE: find users with gmail email
SELECT * FROM users
WHERE email LIKE '%gmail%';

-- LIKE: find users whose name starts with A
SELECT * FROM users
WHERE name LIKE 'A%';

-- ORDER BY: sort users by id from newest to oldest
SELECT * FROM users
ORDER BY id DESC;

-- LIMIT: show only the first 2 users
SELECT * FROM users
LIMIT 2;

-- ORDER BY + LIMIT: find the user with the largest id
SELECT * FROM users
ORDER BY id DESC
LIMIT 1;
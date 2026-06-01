-- Basic SELECT
SELECT * FROM users;

-- SELECT by id
SELECT * FROM users
WHERE id = 2;

-- INSERT: add a new user
INSERT INTO users (id, name, email, status)
VALUES (5, 'Linda', 'linda@gmail.com', 'active');

-- UPDATE: update user's email
UPDATE users
SET email = 'linda123@gmail.com'
WHERE id = 5;

-- DELETE: delete user
DELETE FROM users
WHERE id = 5;
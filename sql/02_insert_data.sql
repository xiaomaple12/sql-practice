-- Insert sample users
INSERT INTO users (id, name, email, status)
VALUES
(1, 'Chris', 'chris@gmail.com', 'active'),
(2, 'Amy', 'amy@gmail.com', 'active'),
(3, 'John', 'john123@gmail.com', 'inactive'),
(4, 'Tom', 'tom@gmail.com', 'active');

-- Insert sample orders
INSERT INTO orders (id, user_id, product_name, amount, status)
VALUES
(1, 2, 'Keyboard', 1000, 'paid'),
(2, 2, 'Mouse', 500, 'paid'),
(3, 3, 'Monitor', 3000, 'pending'),
(4, 1, 'Notebook', 200, 'paid');
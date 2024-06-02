-- Comments in SQL Start with dash-dash --

INSERT INTO products (name, price, can_be_returned)
VALUES ('chair',44, 'f')

INSERT INTO products (name, price, can_be_returned)
VALUES ('table', 124, 'f')

INSERT INTO products (name, price, can_be_returned)
VALUES ('stool', 25, 't')

SELECT * FROM products;

SELECT name FROM products;

SELECT name, price FROM products;

INSERT INTO products (name, price, can_be_returned)
VALUES ('hammok', 99, 't')

SELECT * FROM products WHERE can_be_returned;

SELECT * FROM products WHERE can_be_returned < 44;

SELECT * FROM products WHERE price BETWEEN 25 AND 99;

update products set price = price -20;

delete from products where price < 25;

update products set price = price + 20;

update products set can_be_returned = 't';

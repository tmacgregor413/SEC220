CREATE DATABASE Store;
USE Store;

CREATE TABLE customers (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20),
    lastname varchar(20),
    store varchar(20),
    PRIMARY KEY (id)
);

CREATE TABLE orders (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    product varchar(20),
    cost int,
    customerId int,
    PRIMARY KEY (id),
    FOREIGN KEY (customerId) REFERENCES customers(id)
);
INSERT INTO customers (firstname, lastname, store) VALUES ( 'Gavin', 'Johnston', 'McDonalds');
INSERT INTO customers (firstname, lastname, store) VALUES ( 'Thomas', 'MacGregor', 'Chik-Fil-A');
INSERT INTO customers (firstname, lastname, store) VALUES ( 'Sebastian', 'Roy', 'Dunkin Donuts');

INSERT INTO orders (product, cost, customerId) VALUES ('Cheeseburger', '3', 1);
INSERT INTO orders (product, cost, customerId) VALUES ('Medium Fry', '1.50', 1);
INSERT INTO orders (product, cost, customerId) VALUES ('10pc Nugget', '4', 1);
INSERT INTO orders (product, cost, customerId) VALUES ('Chicken Sandwich', '9', 2);
INSERT INTO orders (product, cost, customerId) VALUES ('Waffle Fries', '1', 2);
INSERT INTO orders (product, cost, customerId) VALUES ('Large Soda', '1.50', 2);
INSERT INTO orders (product, cost, customerId) VALUES ('Plain Bagel', '4.50', 3);
INSERT INTO orders (product, cost, customerId) VALUES ('Large Iced Coffee', '3.75', 3);
INSERT INTO orders (product, cost, customerId) VALUES ('Donut', '1.50', 3);

SELECT * from orders;
SELECT * from customers;

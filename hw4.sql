CREATE DATABASE Store;
USE Store;

CREATE TABLE customers (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20),
    lastname varchar(20),
    company varchar(20),
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
INSERT INTO customers (firstname, lastname, company) VALUES ( 'Gavin', 'Johnston', 'URI');
INSERT INTO customers (firstname, lastname, company) VALUES ( 'Thomas', 'MacGregor', 'RWU');
INSERT INTO orders (product, cost, customerId) VALUES ('Textbook', '4', 0001);
INSERT INTO orders (product, cost, customerId) VALUES ('Homework', '4', 0002);

SELECT * from orders;
SELECT * from customers;


CREATE DATABASE assessment;
USE assessment;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    city VARCHAR(50)
);


CREATE TABLE accounts (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers (name, city) VALUES
('Janani','Chennai'),
('Arun','Coimbatore'),
('Priya','Madurai'),
('Karthik','Salem');




INSERT INTO accounts (customer_id, account_type, balance) VALUES
(1,'Savings',50000),
(1,'Current',20000),
(2,'Savings',30000),
(3,'Savings',15000),
(4,'Current',40000);

CREATE TABLE trains (
    train_id INT PRIMARY KEY AUTO_INCREMENT,
    train_name VARCHAR(50),
    source VARCHAR(50),
    destination VARCHAR(50)
);

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    train_id INT,
    passenger_name VARCHAR(50),
    fare DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY (train_id) REFERENCES trains(train_id)
);

INSERT INTO trains (train_name, source, destination) VALUES
('Express1','Chennai','Madurai'),
('Express2','Coimbatore','Salem'),
('Express3','Madurai','Chennai');

INSERT INTO bookings (train_id, passenger_name, fare, status) VALUES
(1,'Janani',500,'Confirmed'),
(1,'Arun',500,'Waiting'),
(2,'Priya',300,'Confirmed'),
(3,'Karthik',450,'Cancelled'),
(2,'Meena',300,'Confirmed');

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10,2),
    city VARCHAR(30),
    joining_date DATE
);

INSERT INTO Employee VALUES
(101,'John','IT',60000,'Chennai','2022-01-15'),
(102,'David','HR',45000,'Bangalore','2021-03-10'),
(103,'Smith','IT',70000,'Chennai','2020-07-12'),
(104,'Mary','Finance',55000,'Mumbai','2023-01-20'),
(105,'James','HR',48000,'Delhi','2022-05-05'),
(106,'Linda','Finance',65000,'Mumbai','2021-08-18');

CREATE TABLE Customers2 (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(30)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY(customer_id) REFERENCES Customers2(customer_id)
);

INSERT INTO Customers2 VALUES (1,'Ravi','Chennai'), (2,'Divya','Madurai'), (3,'janu','coimbatore'), (4,'kavin','salem'), (5,'abdul','trichy');

INSERT INTO Orders VALUES (1,1,5000,'2024-01-10'), (2,1,3000,'2024-02-15'), (3,2,7000,'2024-01-20'), (4,2,9000,'2024-02-20'), (5,3,12000,'2024-03-25');

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department VARCHAR(30),
    marks INT
);

INSERT INTO Students VALUES
(1,'Kumar','CSE',85),
(2,'Anitha','ECE',78),
(3,'Ravi','CSE',92),
(4,'Deepa','IT',65);

SHOW TABLES;
SELECT * FROM customers;
SELECT * FROM accounts;
SELECT * FROM trains;
SELECT * FROM bookings;
SELECT * FROM Employee;
SELECT * FROM Customers2;
SELECT * FROM Orders;
SELECT * FROM Students;

DELETE FROM Orders;
DELETE FROM Customers2;

DELETE FROM Orders
WHERE order_id > 0;

DELETE FROM Customers2
WHERE customer_id > 0;

SELECT * FROM Customers2;
SELECT * FROM Orders;
INSERT INTO Customers2
VALUES
(1, 'Ravi', 'Chennai'),
(2, 'Divya', 'Madurai'),
(3, 'Janu', 'Coimbatore'),
(4, 'Kavin', 'Salem'),
(5, 'Abdul', 'Trichy');

INSERT INTO Orders
VALUES
(1, 1, 5000, '2024-01-10'),
(2, 1, 3000, '2024-02-15'),
(3, 2, 7000, '2024-01-20'),
(4, 2, 9000, '2024-02-20'),
(5, 3, 12000, '2024-03-10');

SELECT * FROM Customers2;
SELECT * FROM Orders;
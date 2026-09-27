USE assessment;
SELECT * FROM accounts WHERE balance > 20000; 
SELECT * FROM customers WHERE city = 'Chennai'; 
SELECT * FROM accounts WHERE balance BETWEEN 20000 AND 50000;
SELECT * FROM customers WHERE name LIKE 'J%'; 
SELECT * FROM accounts WHERE account_type IN ('Savings','Current');
SELECT * FROM accounts WHERE account_type <> 'Savings';
SELECT * FROM customers WHERE name LIKE '%a%'; 
SELECT * FROM accounts WHERE balance <= 30000; 
SELECT * FROM customers WHERE city <> 'Madurai'; 
SELECT * FROM accounts WHERE balance NOT BETWEEN 10000 AND 40000; 
SELECT * FROM customers WHERE name LIKE '%i'; 
SELECT * FROM accounts WHERE balance = 50000;
 SELECT * FROM customers WHERE city IN ('Chennai','Salem');
SELECT * FROM accounts WHERE balance > 10000 AND balance < 40000; 
SELECT * FROM accounts WHERE account_type NOT IN ('Current'); 
 SELECT * FROM accounts ORDER BY balance DESC; 
 SELECT * FROM customers ORDER BY name ASC; 
 SELECT * FROM accounts ORDER BY account_type ASC, balance DESC;
 SELECT SUM(balance) AS total_balance FROM accounts; 
 SELECT AVG(balance) AS average_balance FROM accounts; 
 SELECT MAX(balance) AS max_balance FROM accounts;
 SELECT MIN(balance) AS min_balance FROM accounts; 
SELECT COUNT(*) AS total_customers FROM customers; 
SELECT account_type, SUM(balance) AS total_balance FROM accounts GROUP BY account_type; 
SELECT account_type, AVG(balance) AS avg_balance FROM accounts GROUP BY account_type; 
SELECT account_type, AVG(balance) AS avg_balance FROM accounts GROUP BY account_type HAVING 
AVG(balance) > 20000; 
SELECT customer_id, COUNT(*) AS account_count FROM accounts GROUP BY customer_id;
SELECT customer_id, COUNT(*) AS account_count FROM accounts GROUP BY customer_id HAVING COUNT(*) > 1;
SELECT c.name, a.balance FROM customers c JOIN accounts a ON c.customer_id = a.customer_id; 
SELECT c.name, a.account_type, a.balance FROM customers c LEFT JOIN accounts a ON c.customer_id = a.customer_id;
 SELECT a.account_id, a.account_type, a.balance, c.name, c.city FROM accounts a JOIN customers c ON a.customer_id = 
c.customer_id; 
SELECT c.name, a.account_type, a.balance FROM customers c JOIN accounts a ON c.customer_id = a.customer_id 
WHERE a.balance > 20000; 

SELECT c.name, SUM(a.balance) AS total_balance FROM customers c JOIN accounts a ON c.customer_id = a.customer_id 
GROUP BY c.name; 

SELECT c.name, a.balance FROM customers c JOIN accounts a ON c.customer_id = a.customer_id ORDER BY a.balance 
DESC; 

SELECT c.city, COUNT(a.account_id) AS account_count FROM customers c JOIN accounts a ON c.customer_id = 
a.customer_id GROUP BY c.city; 

SELECT * FROM accounts WHERE balance > (SELECT AVG(balance) FROM accounts); 

SELECT * FROM customers WHERE customer_id IN (SELECT customer_id FROM accounts); 

SELECT * FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM accounts);

SELECT * FROM accounts WHERE balance = (SELECT MAX(balance) FROM accounts); 

SELECT customer_id, SUM(balance) AS total_balance FROM accounts GROUP BY customer_id HAVING SUM(balance) 
> 40000; 

SELECT * FROM bookings WHERE fare > 400; 

SELECT * FROM bookings WHERE status <> 'Confirmed'; 

SELECT * FROM trains WHERE source = 'Chennai';

SELECT * FROM bookings WHERE fare BETWEEN 300 AND 500; 

SELECT * FROM bookings WHERE passenger_name LIKE 'A%'; 

SELECT t.train_name, b.passenger_name FROM trains t JOIN bookings b ON t.train_id = b.train_id; 

SELECT t.train_name, COUNT(b.booking_id) AS booking_count FROM trains t JOIN bookings b ON t.train_id = b.train_id 
GROUP BY t.train_name; 

SELECT t.train_name, SUM(b.fare) AS total_fare FROM trains t JOIN bookings b ON t.train_id = b.train_id GROUP BY 
t.train_name;

SELECT * FROM bookings WHERE fare = (SELECT MAX(fare) FROM bookings);

SELECT t.train_name, COUNT(b.booking_id) AS booking_count FROM trains t JOIN bookings b ON t.train_id = b.train_id 
GROUP BY t.train_name HAVING COUNT(b.booking_id) > 1; 

SELECT department, COUNT(*) AS total_employees FROM Employee GROUP BY department; 

SELECT department, AVG(salary) AS avg_salary FROM Employee GROUP BY department;

SELECT department, COUNT(*) AS total_employees FROM Employee GROUP BY department HAVING COUNT(*) > 1;

SELECT department, MAX(salary) AS highest_salary FROM Employee GROUP BY department; 

SELECT department, MIN(salary) AS lowest_salary FROM Employee GROUP BY department;

SELECT department, AVG(salary) AS avg_salary FROM Employee GROUP BY department HAVING AVG(salary) > 
50000; 

SELECT department, SUM(salary) AS total_salary FROM Employee GROUP BY department; 

SELECT * FROM Employee ORDER BY salary DESC; 

SELECT * FROM Employee ORDER BY department ASC, salary DESC; 

SELECT city, COUNT(*) AS employee_count FROM Employee GROUP BY city HAVING COUNT(*) > 1; 

SELECT city, SUM(salary) AS total_salary FROM Employee GROUP BY city; 

SELECT department, SUM(salary) AS total_salary FROM Employee GROUP BY department ORDER BY total_salary 
DESC; 

SELECT department, COUNT(*) AS employee_count FROM Employee WHERE salary > 50000 GROUP BY department; 

SELECT department, MAX(salary) - MIN(salary) AS salary_difference FROM Employee GROUP BY department; 

SELECT * FROM Employee ORDER BY salary DESC LIMIT 3; 

SELECT c.customer_name, SUM(o.amount) AS total_amount FROM Customers2 c JOIN Orders o ON c.customer_id = o.customer_id GROUP BY c.customer_name;

SELECT c.customer_name, AVG(o.amount) AS avg_amount FROM Customers2 c JOIN Orders o ON c.customer_id = o.customer_id GROUP BY c.customer_name;

SELECT c.customer_name, MAX(o.amount) AS highest_amount FROM Customers2 c JOIN Orders o ON c.customer_id = o.customer_id GROUP BY c.customer_name;

SELECT c.customer_name, SUM(o.amount) AS total_amount FROM Customers2 c JOIN Orders o ON c.customer_id = o.customer_id GROUP BY c.customer_name ORDER BY total_amount DESC;

SELECT c.customer_name, SUM(o.amount) AS total_amount FROM Customers2 c JOIN Orders o ON c.customer_id = o.customer_id GROUP BY c.customer_name HAVING SUM(o.amount) > 10000;

SELECT c.customer_name, COUNT(o.order_id) AS total_orders FROM Customers2 c JOIN Orders o ON c.customer_id = o.customer_id GROUP BY c.customer_name;

SELECT c.customer_name, SUM(o.amount) AS total_amount FROM Customers2 c JOIN Orders o ON c.customer_id = o.customer_id GROUP BY c.customer_name ORDER BY total_amount DESC LIMIT 1;

SELECT c.customer_name, COUNT(o.order_id) AS total_orders FROM Customers2 c JOIN Orders o ON c.customer_id = o.customer_id GROUP BY c.customer_name ORDER BY total_orders DESC LIMIT 1;

SELECT c.customer_name, AVG(o.amount) AS avg_amount FROM Customers2 c JOIN Orders o ON c.customer_id = o.customer_id GROUP BY c.customer_name HAVING AVG(o.amount) > 2000;

SELECT c.customer_name, SUM(o.amount) AS total_amount FROM Customers2 c JOIN Orders o ON c.customer_id = o.customer_id GROUP BY c.customer_name ORDER BY total_amount DESC LIMIT 5;

SELECT c.customer_name, MIN(o.amount) AS min_amount FROM Customers2 c JOIN Orders o ON c.customer_id = o.customer_id GROUP BY c.customer_name;

SELECT c.customer_name, SUM(o.amount) AS total_amount FROM Customers2 c JOIN Orders o ON c.customer_id = o.customer_id GROUP BY c.customer_name HAVING SUM(o.amount) > 5000;

SELECT c.customer_name, COUNT(o.order_id) AS total_orders, SUM(o.amount) AS total_amount FROM Customers2 c JOIN Orders o ON c.customer_id = o.customer_id GROUP BY c.customer_name;

SELECT c.customer_name, COUNT(o.order_id) AS total_orders, SUM(o.amount) AS total_amount FROM Customers2 c JOIN Orders o ON c.customer_id = o.customer_id GROUP BY c.customer_name HAVING COUNT(o.order_id) > 2 AND SUM(o.amount) > 8000;

SELECT department, AVG(marks) AS avg_marks FROM Students GROUP BY department;

SELECT department, AVG(marks) AS avg_marks FROM Students GROUP BY department HAVING AVG(marks) > 75;

SELECT department, MAX(marks) AS highest_mark FROM Students GROUP BY department;

SELECT department, COUNT(*) AS total_students FROM Students GROUP BY department;

SELECT department, COUNT(*) AS total_students FROM Students GROUP BY department HAVING COUNT(*) > 5;

SELECT department, AVG(marks) AS avg_marks FROM Students GROUP BY department ORDER BY avg_marks DESC;

SELECT department, AVG(marks) AS avg_marks FROM Students GROUP BY department ORDER BY avg_marks DESC LIMIT 3;

SELECT department, AVG(marks) AS avg_marks FROM Students GROUP BY department HAVING AVG(marks) BETWEEN 70 AND 90;

SELECT department, SUM(marks) AS total_marks FROM Students GROUP BY department;

SELECT department, COUNT(*) AS total_students FROM Students GROUP BY department ORDER BY total_students DESC;

SELECT department, MIN(marks) AS lowest_mark FROM Students GROUP BY department;

SELECT department, MAX(marks) AS highest_mark FROM Students GROUP BY department HAVING MAX(marks) > 90;

SELECT department, COUNT(*) AS students_above_80 FROM Students WHERE marks > 80 GROUP BY department;

SELECT department, COUNT(*) AS students_above_75 FROM Students WHERE marks > 75 GROUP BY department HAVING COUNT(*) > 3;

SELECT department, MAX(marks) AS highest_mark FROM Students GROUP BY department ORDER BY highest_mark DESC;
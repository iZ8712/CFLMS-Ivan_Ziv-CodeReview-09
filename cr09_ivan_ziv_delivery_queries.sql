/*1*/

SELECT COUNT(1) FROM employees WHERE first_name = 'John'

/*2*/

SELECT first_name, last_name, salary FROM employees WHERE salary > 60000

/*3*/

SELECT hire_date FROM `employees` WHERE employees.hire_date BETWEEN'2000-01-01'AND '2015-01-01'

/*4 I wanted to know which employee has the biggest salary */

SELECT First_Name, Last_Name, emp_ID, Salary 
FROM employees 
WHERE Salary = ( 
    SELECT MAX(Salary) 
    FROM employees )

/*5 I wanted to know which employee used the LKW as transport*/

SELECT first_name, last_name, emp_ID 
FROM employees 
LEFT JOIN transport ON transport.Employee=employees.emp_ID 
WHERE transport.Type='LKW'

/*6 I wanted to know which employee send mail/packet via ship*/

SELECT first_name, last_name, emp_ID 
FROM employees 
INNER JOIN mail ON mail.Employee=employees.emp_ID 
WHERE mail.Shipping='Ship' 
UNION 
SELECT first_name, last_name, emp_ID 
FROM employees 
INNER JOIN packet ON packet.Employee=employees.emp_ID 
WHERE packet.Shipping='Ship'

/*7 I wanted to know which employee used a transport, worked on packet, mail and drop_of_points in the post office 999*/

SELECT first_name,last_name, emp_ID 
FROM employees
INNER JOIN transport ON transport.Employee = employees.emp_ID
INNER JOIN packet ON packet.Employee = employees.emp_ID
INNER JOIN mail ON mail.Employee = employees.emp_ID
INNER JOIN drop_of_point ON drop_of_point.Employee = employees.emp_ID
WHERE employees.Post_Office = '999'


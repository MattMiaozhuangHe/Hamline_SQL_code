#Create a list of current customer accounts (those that have not been terminated) including enrollment date, whether the account has a hold, and whether children are allowed to rent on the account.
#Create the same list as number 1, and add the number of individual people included on each account.
#Create the same list as number 2, but only for employees who have an account.
#What is the average hourly rate across all employees?

USE video_store;
#1
SELECT customer_account_id, date_enrolled
FROM customer_account
WHERE date_terminated IS NULL;

#2
SELECT customer_account_id, date_enrolled, count(person_id) AS 'Number of Individual'
FROM customer_account AS number_1
	JOIN customer_account_person
    USING(customer_account_id)
WHERE date_terminated IS NULL
GROUP BY customer_account_id;

#3
SELECT customer_account_id, date_enrolled, count(person_id) AS 'Number of Individual'
FROM customer_account AS number_1
	JOIN customer_account_person
    USING(customer_account_id)
    JOIN employee
    USING(person_id)
WHERE date_terminated IS NULL
GROUP BY customer_account_id;

#4
SELECT AVG(employee_hourly_rate)
from employee;

#3 gai
SELECT customer_account_id, date_enrolled, count(person_id) AS 'Number of Individual'
FROM customer_account AS number_1
	JOIN customer_account_person
    USING(customer_account_id)
WHERE date_terminated IS NULL AND customer_account_id in (SELECT customer_account_id FROM customer_account_person JOIN employee USING (person_id))
GROUP BY customer_account_id;


SELECT customer_account_id, date_enrolled, count(person_id) AS 'Number of Individual', hire_date
FROM customer_account AS number_1
	JOIN customer_account_person
    USING(customer_account_id)
    left JOIN employee
    USING(person_id)
GROUP BY customer_account_id
HAVING(hire_date);
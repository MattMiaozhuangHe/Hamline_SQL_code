USE video_store;

###1
SELECT transaction_id, person_given_name as Employee_firstname,person_family_name as Employee_lastname,customer_account_id
FROM customer_transaction
	JOIN employee
    ON customer_transaction.employee_person_id = employee.person_id
    JOIN person
    USING (person_id);
    
###2
SELECT transaction_id, person_given_name as Employee_firstname,person_family_name as Employee_lastname,customer_account_id, movie_title, 
	CASE 
    WHEN media_format = 'D' THEN 'DVD' 
    WHEN media_format = 'V' THEN 'VHS' 
    END AS Format
FROM customer_transaction
	JOIN employee
    ON customer_transaction.employee_person_id = employee.person_id
    JOIN person
    USING (person_id)
    JOIN movie_rental
    USING (transaction_id)
    JOIN movie_copy
    using (movie_id)
    JOIN movie
    using(movie_id);
    
###3
SELECT transaction_id, person_given_name as Employee_firstname,person_family_name as Employee_lastname,customer_account_id, movie_title, 
	CASE 
    WHEN media_format = 'D' THEN 'DVD' 
    WHEN media_format = 'V' THEN 'VHS' 
    END AS Format
FROM customer_transaction
	JOIN employee
    ON customer_transaction.employee_person_id = employee.person_id
    JOIN person
    USING (person_id)
    JOIN movie_rental
    USING (transaction_id)
    JOIN movie_copy
    using (movie_id)
    JOIN movie
    using(movie_id)
WHERE returned_date IS NULL;

###4
SELECT customer_account_id,count(customer_account_id)
FROM customer_account
	JOIN customer_transaction
    USING (customer_account_id)
    JOIN movie_rental
    USING(transaction_id)
WHERE returned_date IS NULL
GROUP BY transaction_id;
###There are four people, but I can't just add this number up. This is best I could do


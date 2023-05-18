USE COLONIAL;

SHOW TABLES;

SELECT CustomerNum, Address
FROM Customer
WHERE State = "NH";

USE Sports;

SHOW TABLES;

Select *
FROM Session
WHERE  LengthOfSession BETWEEN 60 AND 90;
# WHERE 60<= LengthOfSession AND LenthOfSession <= 90; This code also works in same way

Select PatientNum, LastName, FirstName
FROM Patient
WHERE City NOT IN ('Munster', 'Delbert');
#WHERE City = 'Munster' OR City = 'Delbert';

SELECT UnitOfTime#/60 AS TimeInHours
FROM Therapies;







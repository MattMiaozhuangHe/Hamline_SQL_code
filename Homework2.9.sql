USE BITS;

SELECT ClientNum,ClientName
FROM Client;

SELECT *
FROM Tasks;

USE COLONIAL;


SELECT TripName
FROM Trip
WHERE Type = 'Hiking' AND Distance > 6;

SELECT TripName
FROM Trip
WHERE Type = 'Paddling' or State = 'VT';

USE Sports;

SELECT LastName, FirstName
FROM Therapist
WHERE City = 'Palm Rivers';

SELECT LastName, FirstName
FROM Therapist
WHERE City != 'Palm Rivers';

SELECT PatientNum, FirstName, LastName
FROM Patient
WHERE Balance >= 3000.0;

SELECT PatientNum, LastName
FROM Patient
WHERE City = 'Palm Rivers' or City = 'Waterville' or City = 'Munster';

#21
SELECT PatientNum, LastName
FROM Patient
WHERE City IN ('Palm Rivers', 'Waterville','Munster');

#22
SELECT*
FROM Therapies
WHERE Description LIKE '%training%';






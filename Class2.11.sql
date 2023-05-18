USE COLONIAL;

SELECT *
FROM Reservation;

SELECT TripPrice
FROM Reservation
WHERE NumPersons = 2
ORDER BY TripPrice DESC
LIMIT 1;
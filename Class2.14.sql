USE COLONIAL;

SELECT *
FROM Reservation;

SELECT TripPrice
FROM Reservation
WHERE NumPersons = 2
ORDER BY TripPrice DESC
LIMIT 1;

SELECT MAX(TripPrice), NumPersons
FROM Reservation

GROUP BY NumPersons
HAVING NumPersons = 1 OR NumPersons = 2 OR NumPersons = 4
ORDER BY MAX(TripPrice) DESC;

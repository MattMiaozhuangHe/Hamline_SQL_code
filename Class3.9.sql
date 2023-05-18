USE COLONIAL;

SELECT LastName
FROM Reservation AS t1
	JOIN Trip AS t2
    USING (TripID)
		JOIN Customer
		USING (CustomerNum)
        WHERE TripName = 'Sawyer River Ride'
		ORDER BY TripDate DESC
        LIMIT 1;

SELECT*
FROM Reservation
	JOIN Customer
    USING (CustomerNum)
		JOIN TripGuides
        USING (TripID);
USE COLONIAL;

SELECT MAX(MaxGrpSize),Type
FROM Trip
GROUP BY Type;

SELECT TripID, MaxGrpSize
FROM Trip
WHERE MaxGrpSize = (SELECT MAX(MaxGrpSize) FROM Trip);

SELECT TripID, TripDate, TripPrice+OtherFees AS TotalCost
FROM Reservation
WHERE TripPrice+OtherFees = (SELECT MAX(TripPrice+OtherFees)FROM Reservation);

SELECT TripName,TripID
FROM Trip
WHERE TripID = (SELECT TripID
FROM Reservation
WHERE TripPrice+OtherFees = (SELECT MAX(TripPrice+OtherFees)FROM Reservation));
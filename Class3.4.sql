USE BITS;
#3    
select ClientNum, ClientName 
from Client 
where ConsltNum=22;

SELECT *
FROM Consultant;
#13
SELECT LastName, AVG(Balance), COUNT(ClientNum)
FROM Consultant AS t1
	JOIN Client AS t2
	USING(ConsltNum)
    where hours = 40
    GROUP BY LastName
    ORDER BY LastName;
    
SELECT SUM(Balance),
	CASE WHEN ConsltNum = 19 THEN 'Chirstopher Turner'
    WHEN ConsltNum = 22 THEN 'Patrick Whatever'
    END AS 'Consultant Name'
FROM Client
GROUP BY ConsltNum;







#COLONIAL
USE Colonial;

SELECT *
FROM Reservation JOIN Trip
	USING(TripID)
	where TripPrice = (SELECT MAX(TripPrice+OtherFees)
					FROM Reservation
                    WHERE NumPersons = 3);
    
#7
SELECT TripName, State
FROM Trip
WHERE Season = 'Summer'
ORDER BY TripName, State;

#12
SELECT TripName, FirstName,LastName
FROM Guide AS t1
	JOIN Trip AS t2
    ON t1.State = 'NH' AND t2.State = 'NH'
    ORDER BY LastName, TripName;
    
#14
SELECT ReservationID, TripName, LastName,FirstName, (TripPrice+OtherFees)*NumPersons AS TotalCost
FROM Reservation AS t1
	JOIN Customer AS t2
    JOIN Trip AS t3
    ON t1.TripID = t3.TripID
    WHERE NumPersons > 4;
    
#Sports
USE Sports;
#15
SELECT LastName, FirstName
FROM Therapist AS t1
	JOIN Therapies AS t2
    JOIN Session AS t3
    USING (TherapyCode, TherapistId)
    WHERE Description = 'Massage' OR Description = 'Whirlpool';
    
#18
CREATE TABLE CurrentBilling AS(
Select PatientNum, TherapyCode, SessionDate, LengthOfSession,UnitOfTime, (LengthOfSession/UnitOfTime) AS BillableUnits
From Session AS t1
	join Therapies AS t2
	USING(TherapyCode));
#19    
SELECT *
FROM CurrentBilling
WHERE BillableUnits > 0;



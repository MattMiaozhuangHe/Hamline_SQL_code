#BITS
USE BITS;

#8
SELECT COUNT(CreditLimit)
FROM Client
WHERE CreditLimit = 10000;
#there are three client who has CreditLimit for 10000

#10
SELECT ClientName, CreditLimit-Balance AS RemainingCredits
FROM Client;

#12***
SELECT *
FROM Tasks
ORDER BY Category, Price;

#Colonial 
USE COLONIAL;
#9
SELECT State,COUNT(TripName)
FROM Trip
GROUP BY State;

#10
SELECT COUNT(ReservationID),COUNT(TripID)
FROM Reservation
WHERE TripPrice>20 AND TripPrice<75;

#SPORTS
USE Sports;
#8
SELECT TherapyCode, Description
FROM Therapies
WHERE UnitOfTime = 15
ORDER BY Description;

#14
SELECT AVG(LengthOfSession)
FROM Session
WHERE LEFT(SessionDate,7) = '2018-10';

SELECT LEFT(SessionDate,7)
FROM Session;
#LEFT is for string, but this is date

#17***
SELECT 
CASE 
	WHEN Description = 'Whirlpool' THEN 'Whirlpool bath'
    ELSE Description
    END
FROM Therapies;

select *
from Therapies;





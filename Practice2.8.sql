USE Sports;

Select *
FROM Patient;

INSERT INTO Patient
VALUES
('1113','He','Matt','1536Hewitt Ave','St.paul','MN','55104',1222);

DELETE FROM Patient
WHERE LastName = 'He';
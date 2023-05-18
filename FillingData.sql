USE tiproject;

SELECT *
FROM Teams;

INSERT INTO Teams(TeamName, Country, StartDate, League)
VALUES('Alliance', 'Sweden', '2013-04-01','EU'),
		('Newbee', 'China', '2014-03-31', 'CN'),
        ('Evil Geniuses','America','1999-01-01','US'),
        ('Wings Gaming', 'China','2014-08-01','CN'),
        ('Team Liquid', 'Netherland','2000-01-01','EU'),
        ('OG','Europe','2015-08-01','EU'),
        ('Team Spirit', 'Russia', '2015-01-01','CIS');
INSERT INTO Teams
VALUES('PSG.LGD','China','2012-02-20','CN');
        
INSERT INTO Ti(TiEvent,TiYear, Country)
VALUES('The International 1', '2011-08-17','Germany'),
		('The International 2', '2012-08-26','America'),
        ('The International 3', '2013-08-07','America'),
        ('The International 4', '2014-06-08','America'),
        ('The International 5', '2015-06-26','Americca'),
        ('The International 6', '2016-08-08','America'),
        ('The International 7', '2017-08-07','America'),
        ('The International 8', '2018-08-20','Canada'),
        ('The International 9', '2019-08-20','Shanghai'),
        ('The International 10', '2021-06-22','Romania');

INSERT INTO Players (PlayerID, PlayName, TeamName, Country, Position, DateOfBirth)
VALUES ('Artstyle', 'Ivan Antonov', 'Navi', 'Ukraine', 'Carry', '1989-04-20'),
		('Dendi','Danil Ishutin','Navi','Ukraine','Middle','1989-12-30'),
        ('Puppey','Clement Ivanov','Navi','Estonia','Support','1990-03-06'),
        ('Zhou','Chen Yao','Invictus Gaming', 'China','Carry','1990-06-14'),
        ('430','Lou Feichi', 'Invictus Gaming', 'China','Middle','1990-02-14'),
        ('YYF','Jiang Cen','Invictus Gaming', 'China', 'Offlaner','1987-02-03'),
        ('Loda','Jonathan Berg','Alliance','Sweden','Carry','1988-03-19'),
        ('s4','Gustav Magnusson','Alliance','Sweden','Middle','1992-04-01'),
        ('Hao','Chen Zhihao','Newbee','China','Carry','1990-07-28'),
        ('Mu','Zhang Pan','Newbee','China','Middle','1989-12-24'),
        ('xiao8','Zhang Ning','Newbee', 'China','Offlaner','1989-01-11'),
        ('Banana','Wang Jiao','Newbee','China','Support','1990-02-05'),
        ('SanSheng','Wang Zhaohui','Newbee','China','Hard','1989-06-13');
        
INSERT INTO Players (PlayerID, PlayName, TeamName, Country, Position, DateOfBirth)
VALUES ('Fear','Clinton Loomis','Evil Geniuses','America','Carry','1988-02-19'),
		('SumaiL','Syed Sumail Hussan','Evil Geniuses','America','Middle','1999-02-13'),
        ('Aventador','Chu Zeyu','Wings Gaming','China','Carry','1997-03-21'),
        ('bLink','Zhou Zhang','Wings Gaming','China','Middle','1992-07-31'),
        ('Faith_bian','Zhang Ruida','Wings Gaming','China','Offlaner','1998-03-21'),
        ('y','Zhang Yiping','Wings Gaming','China','Hard','1998-08-08'),
        ('iceice','Li Peng','Wings Gaming','China', 'Support','1995-09-11'),
        ('MATUMBAMAN','Lasse Urpalainen','Team Liquid','Finland','Carry','1995-03-03'),
        ('Miracle-','Amer AI-Barkawi','Team Liquid','Jordan','Middle','1997-06-20'),
        ('MinD_ContRol','Ivan Borislavov','Team Liquid','Bulgaria', 'Offlaner','1995-01-20'),
        ('GH','Maroun Merhej','Team Liquid','Lebanon','Support','1995-06-17'),
        ('Kuroky','Kuro Salehi','Team Liquid', 'Germany','Hard','1992-10-28');
        

INSERT INTO Games (GameID,WinTeam, LossTeam,WhichGroup,TiEvent)
VALUES(123456789,'Navi','Alliance','Wingroup','The International 1'),
		(123456788,'Invictus Gaming','Navi','Wingroup','The International 2'),
        (123456787,'Alliance','Navi','Lossgroup','The International 3'),
        (123456786,'Vici Gaming','Newbee','Lossgroup','The International 4'),
        (123456785,'CDEC','Evil Geniuses','Wingroup','The International 5'),
        (123554323,'Wings Gaming','DC','Wingroup','The International 6'),
        (1234564345,'Team Liquid','Newbee','Lossgroup','The International 7'),
        (123458475,'OG','PSG.LGD','Wingroup','The International 8');

INSERT INTO GameAttend(GameID,PlayerID)
VALUES (123456789,'Dendi'),
(123456787,'YYF'),
(123456786,'xiao8');

SELECT *
FROM GameAttend;
        
        
        
        

CREATE DATABASE Tiproject;
USE Tiproject;

CREATE TABLE Players(
	PlayerID VARCHAR(20),
    PlayName VARCHAR(20),
    TeamName VARCHAR(15),
    Country VARCHAR(10),
    Position VARCHAR(10),
    DateOfBirth DATE,
    PRIMARY KEY (PlayerId));
 

CREATE TABLE Teams(
	TeamName VARCHAR(15),
    Country VARCHAR(10),
    StartDate DATE,
    League VARCHAR(10),
    PRIMARY KEY (TeamName));
    
CREATE TABLE Games (
	GameID INT(20),
    WinTeam VARCHAR(15),
    LossTeam VARCHAR(15),
    WhichGroup VARCHAR(10),
    TiEvent VARCHAR(17),
    PRIMARY KEY (GameID));

CREATE TABLE Ti (
	TiEvent Varchar(20),
    TiYear Date,
    Country VARCHAR(10),
    PRIMARY KEY (TiEvent));
    
    
CREATE TABLE GameAttend (
	GameID INT(20),
    PlayerID VARCHAR(20),
    PRIMARY KEY (GameID, PlayerID));

ALTER TABlE Players
    ADD FOREIGN KEY (TeamName) 
    REFERENCES Teams(TeamName);
    
AlTER TABLE Games
	ADD FOREIGN KEY (TiEvent) REFERENCES Ti (TiEvent);
    
ALTER TABLE GameAttend
    ADD FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID);
ALTER TABLE GameAttend
    ADD FOREIGN KEY (GameID) REFERENCES Games (GameID);
    

    
    
 
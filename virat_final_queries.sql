drop table players;
CREATE TABLE Players(
    PlayerID INT,
    PlayerName VARCHAR(50),
    Country VARCHAR(50),
    Role VARCHAR(50)
);
drop table matchformats;
CREATE TABLE MatchFormats(
    FormatID INT,
    FormatName VARCHAR(20)
);
drop table viratstats;
CREATE TABLE ViratStats(
    MatchID INT,
    PlayerID INT,
    FormatID INT,
    Opponent VARCHAR(50),
    MatchDate DATE,
    Venue VARCHAR(50),
    Runs INT,
    BallsFaced INT,
    Centuries INT,
    Fifties INT,
    StrikeRate DECIMAL(5,2),
    Result VARCHAR(20)
);

INSERT INTO Players VALUES
(1,'Virat Kohli','India','Batsman');

INSERT INTO MatchFormats VALUES
(1,'ODI'),
(2,'Test'),
(3,'T20I');

INSERT INTO ViratStats VALUES
(101,1,1,'Sri Lanka','2009-12-24','Kolkata',107,114,1,0,93.85,'Win'),

(102,1,1,'New Zealand','2023-11-15','Mumbai',117,113,1,0,103.54,'Win'),

(103,1,2,'South Africa','2019-10-10','Pune',254,336,1,0,75.59,'Win'),

(104,1,3,'Afghanistan','2022-09-08','Dubai',122,61,1,0,200.00,'Win'),

(105,1,1,'Australia','2016-01-17','Melbourne',117,117,1,0,100.00,'Lose'),

(106,1,2,'England','2018-08-18','Nottingham',103,197,1,0,52.28,'Win'),

(107,1,1,'Pakistan','2023-10-14','Ahmedabad',85,76,0,1,111.84,'Win'),

(108,1,3,'Pakistan','2022-10-23','Melbourne',82,53,0,1,154.71,'Win'),

(109,1,2,'Australia','2014-12-09','Adelaide',141,256,1,0,55.07,'Lose'),

(110,1,1,'Bangladesh','2011-02-19','Dhaka',100,83,1,0,120.48,'Win');

SELECT * FROM ViratStats;

SELECT * FROM ViratStats
WHERE FormatID = 1
AND Centuries = 1

SELECT Opponent,Runs
FROM ViratStats
ORDER BY Runs DESC;

SELECT FormatID,
SUM(Runs) AS TotalRuns
FROM ViratStats
GROUP BY FormatID;

SELECT
P.PlayerName,
M.FormatName,
V.Opponent,
V.Runs,
V.Result
FROM ViratStats V
JOIN Players P
ON V.PlayerID = P.PlayerID
JOIN MatchFormats M
ON V.FormatID = M.FormatID;


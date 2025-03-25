-- «· Õﬁﬁ „‰ ÊÃÊœ ﬁ«⁄œ… «·»Ì«‰«  ﬁ»· ≈‰‘«∆Â«
IF DB_ID('FlightAnalysis') IS NULL
CREATE DATABASE FlightAnalysis;
GO

USE FlightAnalysis;
GO

-- ÃœÊ· ‘—ﬂ«  «·ÿÌ—«‰
CREATE TABLE Airlines (
    CarrierID INT PRIMARY KEY,
    UniqueCarrier VARCHAR(10) NOT NULL unique,
    Airline VARCHAR(255) NOT NULL unique
);

-- ÃœÊ· «·„ÿ«—« 
CREATE TABLE Airports (
    IATA_Code VARCHAR(10) PRIMARY KEY,
    AirportName VARCHAR(255) NOT NULL unique,
	Location_Indicator CHAR(4) NOT NULL unique,
	Latitude FLOAT NOT NULL,
	Longitude FLOAT NOT NULL
);

-- ÃœÊ· «·ÿ«∆—« 
CREATE TABLE Aircrafts (
    TailNum VARCHAR(50) NOT NULL PRIMARY KEY,
	Airline VARCHAR(255) NOT NULL
	FOREIGN KEY (Airline) REFERENCES Airlines(Airline)
);

-- ÃœÊ· «·—Õ·« 
CREATE TABLE Flights (
	FlightID INT PRIMARY KEY ,
    FlightNum INT NOT NULL ,
    Date DATE NOT NULL,
    DayOfWeek TINYINT NOT NULL,
    UniqueCarrier VARCHAR(10) NOT NULL,
    TailNum VARCHAR(50) NOT NULL,
    Origin_IATA_Code VARCHAR(10) NOT NULL,
    Dest_IATA_Code VARCHAR(10) NOT NULL,
    Distance INT NOT NULL,
    Cancelled BIT NOT NULL,
    CancellationCode VARCHAR(10),
    Diverted BIT NOT NULL,
    FOREIGN KEY (UniqueCarrier) REFERENCES Airlines(UniqueCarrier),
    FOREIGN KEY (TailNum) REFERENCES Aircrafts(TailNum),
    FOREIGN KEY (Origin_IATA_Code) REFERENCES Airports(IATA_Code),
    FOREIGN KEY (Dest_IATA_Code) REFERENCES Airports(IATA_Code)
);

-- ÃœÊ· √Êﬁ«  «·—Õ·« 
CREATE TABLE FlightTimes (
    FlightID INT PRIMARY KEY,
    ACT_DepTime TIME,
    ACT_ArrTime TIME,
    Scheduled_ArrTime TIME,
    ActualElapsedTime INT,
    CRSElapsedTime INT,
    AirTime INT,
	DepDelays INT,
    ArrDelay INT,
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID)
);

-- ÃœÊ·  √ŒÌ—«  «·—Õ·«  ( ’ÕÌÕ «·√⁄„œ… «·„Õ”Ê»…)
CREATE TABLE FlightDelays (
    FlightID INT PRIMARY KEY,
    CarrierDelay INT,
    WeatherDelay INT,
    NASDelay INT,
    SecurityDelay INT,
    LateAircraftDelay INT,
    ArrDelay INT,  --  „ ≈÷«› Â ·Õ”«» ‰”»… «· √ŒÌ—
    CRSElapsedTime INT,  --  „ ≈÷«› Â ·Õ”«» ‰”»… «· √ŒÌ—
    DelayRatio AS (CAST(ArrDelay AS FLOAT) / NULLIF(CRSElapsedTime, 0)) PERSISTED,
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID)
);

-- ÃœÊ· ⁄„·Ì«  «· «ﬂ”Ì
CREATE TABLE TaxiTimes (
    FlightID INT PRIMARY KEY,
    TaxiIn INT,
    TaxiOut INT,
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID)
);

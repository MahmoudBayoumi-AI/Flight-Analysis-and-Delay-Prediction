use FlightAnalysis
BULK INSERT [Airports]
FROM "C:\Users\DELL\Downloads\Flight Delay Project\Tables_CSV_Files\Airports_Data.CSV"
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,  -- ≈–« ﬂ«‰ «·’› «·√Ê· ÌÕ ÊÌ ⁄·Ï √”„«¡ «·√⁄„œ…
    FIELDTERMINATOR = ',',  -- ›«’· «·ÕﬁÊ·
    ROWTERMINATOR = '\n',  -- ›«’· «·’›Ê›
    TABLOCK
);

BULK INSERT [Airlines]
FROM "C:\Users\DELL\Downloads\Flight Delay Project\Tables_CSV_Files\Airlines_Data.CSV"
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,  -- ≈–« ﬂ«‰ «·’› «·√Ê· ÌÕ ÊÌ ⁄·Ï √”„«¡ «·√⁄„œ…
    FIELDTERMINATOR = ',',  -- ›«’· «·ÕﬁÊ·
    ROWTERMINATOR = '\n',  -- ›«’· «·’›Ê›
    TABLOCK
);

BULK INSERT [Aircrafts]
FROM "C:\Users\DELL\Downloads\Flight Delay Project\Tables_CSV_Files\Aircrafts_Data.CSV"
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,  -- ≈–« ﬂ«‰ «·’› «·√Ê· ÌÕ ÊÌ ⁄·Ï √”„«¡ «·√⁄„œ…
    FIELDTERMINATOR = ',',  -- ›«’· «·ÕﬁÊ·
    ROWTERMINATOR = '\n',  -- ›«’· «·’›Ê›
    TABLOCK
);

set DATEFORMAT dmy;
BULK INSERT [Flights]
FROM "C:\Users\DELL\Downloads\Flight Delay Project\Tables_CSV_Files\Flights_Data.CSV"
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,  -- ≈–« ﬂ«‰ «·’› «·√Ê· ÌÕ ÊÌ ⁄·Ï √”„«¡ «·√⁄„œ…
    FIELDTERMINATOR = ',',  -- ›«’· «·ÕﬁÊ·
    ROWTERMINATOR = '\n',  -- ›«’· «·’›Ê›
    TABLOCK
);

BULK INSERT [FlightTimes]
FROM "C:\Users\DELL\Downloads\Flight Delay Project\Tables_CSV_Files\FlightTimes_Data.CSV"
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,  -- ≈–« ﬂ«‰ «·’› «·√Ê· ÌÕ ÊÌ ⁄·Ï √”„«¡ «·√⁄„œ…
    FIELDTERMINATOR = ',',  -- ›«’· «·ÕﬁÊ·
    ROWTERMINATOR = '\n',  -- ›«’· «·’›Ê›
    TABLOCK
);

BULK INSERT FlightDelays
FROM 'C:\Users\DELL\Downloads\Flight Delay Project\Tables_CSV_Files\FlightDelays_Data.CSV'
WITH (
    FORMATFILE = 'C:\Users\DELL\Downloads\Flight Delay Project\Tables_CSV_Files\FlightDelays_Format.xml',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT [TaxiTimes]
FROM "C:\Users\DELL\Downloads\Flight Delay Project\Tables_CSV_Files\TaxiTimes_Data.CSV"
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,  -- ≈–« ﬂ«‰ «·’› «·√Ê· ÌÕ ÊÌ ⁄·Ï √”„«¡ «·√⁄„œ…
    FIELDTERMINATOR = ',',  -- ›«’· «·ÕﬁÊ·
    ROWTERMINATOR = '\n',  -- ›«’· «·’›Ê›
    TABLOCK
);
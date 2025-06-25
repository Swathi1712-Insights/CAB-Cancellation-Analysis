CREATE DATABASE CABCancellation;
Use CABCancellation;

--Counts of Total Rides--

SELECT COUNT(*)AS Total_Rides
FROM dbo.Ride_Cancellation_Analysis;

--Counts of Completed VS Cancelled

SELECT Trip_status,COUNT(*)AS Ride_count
FROM dbo.Ride_Cancellation_Analysis
GROUP BY Trip_status;

--Cancellations by Hour of the day--

SELECT 
    DATEPART(HOUR, Booking_Time) AS Hour,
    COUNT(*) AS Cancellation_Count
FROM dbo.Ride_Cancellation_Analysis
WHERE Trip_Status LIKE 'Cancelled%'
GROUP BY DATEPART(HOUR, Booking_Time)
ORDER BY Hour;

--Common cancellation reasons--

SELECT Cancellation_Reason,COUNT(*) AS Count
FROM dbo.Ride_Cancellation_Analysis
WHERE Trip_status LIKE 'Cancelled%'
GROUP BY Cancellation_Reason
ORDER BY Count DESC;

--Cancellation by city--

SELECT
    City,
	COUNT(*) AS Cancellation_Count
FROM dbo.Ride_Cancellation_Analysis
WHERE Trip_status LIKE 'Cancelled%'
GROUP BY City
ORDER BY Cancellation_Count DESC;

--Cancellations by CAB Types--

SELECT 
    Cab_Type,
    COUNT(*) AS Cancelled_Rides
FROM dbo.Ride_Cancellation_Analysis
WHERE Trip_Status LIKE 'Cancelled%'
GROUP BY Cab_Type
ORDER BY Cancelled_Rides DESC;

--Customers that got most of the rides cancelled--

SELECT 
    Customer_ID,
    COUNT(*) AS Cancelled_Rides
FROM dbo.Ride_Cancellation_Analysis
WHERE Trip_Status LIKE 'Cancelled%'
GROUP BY Customer_ID
ORDER BY Cancelled_Rides DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;

--Drivers who cancelled the most--

SELECT 
    Driver_ID,
    COUNT(*) AS Cancelled_By_Driver
FROM dbo.Ride_Cancellation_Analysis
WHERE Trip_Status = 'Cancelled by Driver'
GROUP BY Driver_ID
ORDER BY Cancelled_By_Driver DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;

--Revenue Lost By City--

SELECT 
    City,
    SUM(TRY_CAST(Fare_Amount AS FLOAT)) AS Revenue_Lost
FROM dbo.Ride_Cancellation_Analysis
WHERE Trip_Status LIKE 'Cancelled%'
GROUP BY City
ORDER BY Revenue_Lost DESC;









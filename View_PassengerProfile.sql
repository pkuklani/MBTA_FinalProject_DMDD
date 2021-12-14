CREATE OR REPLACE VIEW MBTA_PassengerProfile
AS 
SELECT 

        ml.username,
        mp.passengerid,
        mp.passengerfname,
        mp.passengerlname,
        mp.dob,
        mp.address,
        mp.city,
        mc.balance
              
FROM mbta_passenger MP
JOIN MBTA_Login ML
    ON mp.passengerid = ml.passengerid   
LEFT OUTER JOIN mbta_charlie MC
ON mc.passengerid=mp.passengerid;
    
    
   -- SELECT * FROM MBTA_PASSENGERPROFILE;

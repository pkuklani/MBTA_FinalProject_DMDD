--------------------------------------------------------
--  File created - Wednesday-December-15-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View MBTA_MAXIMUM_REVENUE_PASSENGERS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "ADMIN"."MBTA_MAXIMUM_REVENUE_PASSENGERS" ("TRANCHEID", "PASSENGERFNAME", "PASSENGERLNAME") DEFAULT COLLATION "USING_NLS_COMP"  AS 
  SELECT t.trancheid, p.passengerfname, p.passengerlname
FROM MBTA_Passenger p
right join MBTA_Transaction t
on p.PassengerID = t.PassengerID
group by t.trancheid, p.passengerfname, p.passengerlname
having count(*)>1
order by p.passengerlname
;

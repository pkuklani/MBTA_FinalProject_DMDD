

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "ADMIN"."PASSENGER_AGE" ("PASSENGERFNAME", "PASSENGERLNAME", "DOB", "CURRENT_AGE") DEFAULT COLLATION "USING_NLS_COMP"  AS 
  select mbta_passenger.passengerfname, mbta_passenger.passengerlname, 
mbta_passenger.dob,
trunc(months_between(sysdate,mbta_passenger.dob) / 12)
as current_age from mbta_passenger
;
--------------------------------------------------------
--  File created - Wednesday-December-15-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View TRAIN_AGE
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "ADMIN"."TRAIN_AGE" ("TRAINID", "YEAROFMANUFACTURING", "CURRENT_TRAIN_AGE") DEFAULT COLLATION "USING_NLS_COMP"  AS 
  select mbta_traininfo.trainid, mbta_traininfo.yearofmanufacturing,
trunc(EXTRACT(Year FROM sysdate)) - EXTRACT(Year from (to_date(mbta_traininfo.yearofmanufacturing, 'yyyy')))
as current_train_age from mbta_traininfo
;


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


--------------------------------------------------------
--  File created - Wednesday-December-15-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View MBTA_PASSENGER_ALL_TRANSACTIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "ADMIN"."MBTA_PASSENGER_ALL_TRANSACTIONS" ("PASSENGERFNAME", "PASSENGERLNAME", "CHARLIEID", "TRANCHEID", "TRANSACTIONID", "PASSENGERID") DEFAULT COLLATION "USING_NLS_COMP"  AS 
  select p.passengerfname, p.passengerlname, c.charlieid, c.trancheid, t.transactionid, t.passengerid 
from mbta_charlie c
join mbta_transaction t
on t.passengerid = c.passengerid
join mbta_passenger p
on t.passengerid= p.passengerid
order by passengerid
;





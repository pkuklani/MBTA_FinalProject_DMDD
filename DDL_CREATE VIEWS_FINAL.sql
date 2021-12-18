

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

--------------------------------------------------------
--  DDL for View MBTA_CHARLIE_LOW_BALANCE
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "ADMIN"."MBTA_CHARLIE_LOW_BALANCE" ("BALANCE", "PASSENGERID", "CHARLIEID", "PASSENGERFNAME", "PASSENGERLNAME") DEFAULT COLLATION "USING_NLS_COMP"  AS 
  select c.balance, c.passengerid, c.charlieid, p.passengerfname, p.passengerlname from mbta_charlie c
inner join mbta_passenger p
on
c.passengerid = p.passengerid
where c.balance<10
;

--------------------------------------------------------
--  DDL for View MBTA_EMPLOYEEPROFILE
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "ADMIN"."MBTA_EMPLOYEEPROFILE" ("EMPLOYEEID", "NAME", "DEPTNAME", "ROLE", "AGE", "ADDRESS", "CITY", "STATE", "ZIPCODE", "DATEOFJOINING", "NOOFMONTHSINSERVICE", "TRAINSERIALNO") DEFAULT COLLATION "USING_NLS_COMP"  AS 
  SELECT ME.EMPLOYEEID, 
        ME.NAME, 
        MDT.DEPTNAME, 
        MD.ROLE, 
        ME.AGE, 
        ME.ADDRESS, 
        ME.CITY, 
        ME.STATE, 
        ME.ZIPCODE, 
        ME.DOJ AS DATEOFJOINING,
        FLOOR(MONTHS_BETWEEN(SYSDATE, ME.DOJ)) AS NOOFMONTHSINSERVICE,
        MT.TRAINSERIALNO 
FROM MBTA_EMPLOYEE ME
JOIN MBTA_DEPT MD
    ON ME.DEPTID = MD.DEPTID
JOIN MBTA_DEPTTYPE MDT
    ON MD.DEPTTYPEID = MDT.DEPTTYPEID
LEFT OUTER JOIN MBTA_TRAININFO MT
    ON MT.TRAINID = ME.TRAINID
;

--------------------------------------------------------
--  DDL for View MBTA_PASSENGERPROFILE
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "ADMIN"."MBTA_PASSENGERPROFILE" ("USERNAME", "PASSENGERID", "PASSENGERFNAME", "PASSENGERLNAME", "DOB", "ADDRESS", "CITY", "BALANCE") DEFAULT COLLATION "USING_NLS_COMP"  AS 
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
ON mc.passengerid=mp.passengerid
;





--------------------------------------------------------
--  File created - Wednesday-December-15-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View PASSENGER_AGE
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "ADMIN"."PASSENGER_AGE" ("PASSENGERFNAME", "PASSENGERLNAME", "DOB", "CURRENT_AGE") DEFAULT COLLATION "USING_NLS_COMP"  AS 
  select mbta_passenger.passengerfname, mbta_passenger.passengerlname, 
mbta_passenger.dob,
trunc(months_between(sysdate,mbta_passenger.dob) / 12)
as current_age from mbta_passenger
;

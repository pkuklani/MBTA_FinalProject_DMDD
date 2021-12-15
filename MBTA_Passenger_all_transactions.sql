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

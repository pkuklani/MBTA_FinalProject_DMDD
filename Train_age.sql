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

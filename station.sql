--------------------------------------------------------
--  File created - Tuesday-December-14-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MBTA_STATION
--------------------------------------------------------

  CREATE TABLE "ADMIN"."MBTA_STATION" 
   (	"STATIONID" NUMBER(*,0), 
	"ROUTEID" NUMBER(*,0), 
	"STATIONNAME" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"STATIONZIPCODE" NUMBER(*,0), 
	"LATITUDE" VARCHAR2(20 BYTE) COLLATE "USING_NLS_COMP", 
	"LONGITUDE" VARCHAR2(20 BYTE) COLLATE "USING_NLS_COMP", 
	"STATUS" CHAR(1 BYTE) COLLATE "USING_NLS_COMP", 
	"STATIONSEQ" NUMBER(5,0), 
	"PREVSEQ" NUMBER(5,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 COLUMN STORE COMPRESS FOR QUERY HIGH ROW LEVEL LOCKING LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Index SYS_C0027619
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."SYS_C0027619" ON "ADMIN"."MBTA_STATION" ("STATIONID") 
  PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  Constraints for Table MBTA_STATION
--------------------------------------------------------

  ALTER TABLE "ADMIN"."MBTA_STATION" ADD CHECK (status in ('Y','N')) ENABLE;
  ALTER TABLE "ADMIN"."MBTA_STATION" MODIFY ("STATIONID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."MBTA_STATION" MODIFY ("ROUTEID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."MBTA_STATION" MODIFY ("STATIONNAME" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."MBTA_STATION" MODIFY ("STATIONZIPCODE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."MBTA_STATION" ADD PRIMARY KEY ("STATIONID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MBTA_STATION
--------------------------------------------------------

  ALTER TABLE "ADMIN"."MBTA_STATION" ADD FOREIGN KEY ("ROUTEID")
	  REFERENCES "ADMIN"."MBTA_ROUTEINFO" ("ROUTEID") ENABLE;
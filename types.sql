--------------------------------------------------------
--  File created - Tuesday-December-14-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MBTA_TYPES
--------------------------------------------------------

  CREATE TABLE "ADMIN"."MBTA_TYPES" 
   (	"TYPEID" NUMBER(*,0), 
	"TYPENAME" VARCHAR2(25 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 COLUMN STORE COMPRESS FOR QUERY HIGH ROW LEVEL LOCKING LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Index SYS_C0027555
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."SYS_C0027555" ON "ADMIN"."MBTA_TYPES" ("TYPEID") 
  PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  Constraints for Table MBTA_TYPES
--------------------------------------------------------

  ALTER TABLE "ADMIN"."MBTA_TYPES" MODIFY ("TYPEID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."MBTA_TYPES" MODIFY ("TYPENAME" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."MBTA_TYPES" ADD PRIMARY KEY ("TYPEID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
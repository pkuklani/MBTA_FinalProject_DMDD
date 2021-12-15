--------------------------------------------------------
--  Ref Constraints for Table MBTA_ROUTEINFO
--------------------------------------------------------

  ALTER TABLE "ADMIN"."MBTA_ROUTEINFO" ADD FOREIGN KEY ("TYPEID")
	  REFERENCES "ADMIN"."MBTA_TYPES" ("TYPEID") ENABLE;

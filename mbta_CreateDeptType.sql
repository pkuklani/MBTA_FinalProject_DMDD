----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------
--Description: Stored Procedure to Create a new department type. 

--SAMPLE USAGE:
--BEGIN
--        mbta_CreateDeptType ('Servicing');
        
--     END;
----------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------

SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE mbta_CreateDeptType
(
DeptTypeName IN VARCHAR2
)
IS LastDeptTypeId NUMBER := 0;
IsRecordPresent NUMBER :=0;
DeptExists EXCEPTION;
BEGIN

SELECT COUNT(1) INTO IsRecordPresent FROM MBTA_DEPTTYPE WHERE deptname = DeptTypeName;
IF isrecordpresent>0
THEN  RAISE DeptExists;
ELSE 


SELECT MAX(depttypeid) INTO lastdepttypeid FROM MBTA_DEPTTYPE;


INSERT INTO mbta_depttype (depttypeid, deptname) 
VALUES (LastDeptTypeId+1,DeptTypeName);
COMMIT;
END IF;

EXCEPTION
 WHEN DeptExists THEN
        DBMS_OUTPUT.PUT_LINE('Error: Department Type is Already Present. No updates were made.');
    WHEN OTHERS THEN
        ROLLBACK;
END mbta_CreateDeptType;
/


----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------
--Description: Stored Procedure to Create a new department. 

--SAMPLE USAGE:
--BEGIN
--    mbta_CreateDept('Servicing', 'Driver');
--END;
----------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------

SET SERVEROUTPUT ON;
create or replace PROCEDURE mbta_CreateDept
(
InDeptName IN VARCHAR2,
RoleInDept IN VARCHAR2
)
IS DtId NUMBER :=0;
IsDTypeRecordPresent NUMBER := 0;
IsRecordPresent NUMBER :=0;
LastDeptId NUMBER := 0;
DeptExists EXCEPTION;
InvalidDeptTypeEx EXCEPTION;

BEGIN

SELECT COUNT(1) INTO IsDTypeRecordPresent FROM mbta_depttype WHERE DEPTNAME=InDeptName;
IF IsDTypeRecordPresent = 0
THEN RAISE InvalidDeptTypeEx;
END IF;

SELECT MIN(DEPTTYPEID) INTO DtId FROM mbta_depttype WHERE DEPTNAME=InDeptName;

IF DtId IS NULL OR DtId = 0 
THEN RAISE InvalidDeptTypeEx;
END IF;

SELECT COUNT(1) INTO IsRecordPresent FROM MBTA_DEPT WHERE DeptTypeId = DtId AND ROLE = RoleInDept;

IF isrecordpresent>0
THEN  RAISE DeptExists;
ELSE 

SELECT MAX(DEPTID) INTO LastDeptId FROM MBTA_DEPT;
INSERT INTO MBTA_DEPT(deptid, depttypeid,Role)
VALUES (LastDeptId+1, DtId,RoleInDept);
COMMIT;

END IF;

EXCEPTION
    WHEN InvalidDeptTypeEx THEN
        DBMS_OUTPUT.PUT_LINE('Error: Department Type does not exist. No updates were made.');
    WHEN DeptExists THEN
        DBMS_OUTPUT.PUT_LINE('Error: This Department is Already Present. No updates were made.');
    WHEN OTHERS THEN
        ROLLBACK;
END mbta_CreateDept;
/

--BEGIN
  --  mbta_CreateDept('Servicing', 'Driver');
--END;
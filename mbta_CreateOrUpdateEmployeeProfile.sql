----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------
--Description: Stored Procedure to Create or Update Employee Profile. 
--             If Employee ID passed exists, the same record will be updated with the input values passed.
--             If Employee ID passed is not present, a new profile record will be created
--             Stored Procedure will return the Employee ID and whether a New Employee was created or NOT.
--Author: Priyanka Kuklani
--SAMPLE USAGE:
    --TO UPDATE
        --DECLARE 
        --GeneratedEmployeeID NUMBER :=0;
        --EmployeeExists NUMBER :=0;
        --BEGIN
        --    mbta_createorupdateemployeeprofile (178, 'Zeus Duke', NULL, NULL, 'San Fransisco', NULL, 33203, NULL, GeneratedEmployeeID, EmployeeExists);
        --    DBMS_OUTPUT.PUT_LINE(GeneratedEmployeeID);
        --    DBMS_OUTPUT.PUT_LINE(EmployeeExists);
        --END;
----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------
SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE mbta_CreateOrUpdateEmployeeProfile (
EmpId IN NUMBER,
EmpName IN VARCHAR2,
EmpAge IN NUMBER,
Addr IN VARCHAR2,
EmpCity IN VARCHAR2,
EmpState IN VARCHAR2,
Zip IN NUMBER,
DateOfJoining IN DATE,
DeptName IN VARCHAR2,
GenEmpID OUT NUMBER,
EmpExists OUT NUMBER
)
IS
    deptId NUMBER := 0;
    invalidDeptEx EXCEPTION;
BEGIN
    SELECT COUNT(1) INTO EmpExists FROM MBTA_EMPLOYEE WHERE EmployeeID = EmpId;
    SELECT MIN(NVL(DEPTID, 0)) INTO deptId FROM MBTA_DEPT WHERE ROLE = DeptName;
    IF deptId IS NULL OR deptId <= 0
    THEN 
        RAISE invalidDeptEx;
    END IF;
    IF NVL(EmpExists, 0) > 0
    THEN
        UPDATE MBTA_EMPLOYEE 
        SET 
            DEPTID = DEPTID, 
            NAME = NVL(EmpName, NAME), 
            AGE = NVL(EmpAge, AGE), 
            Address = NVL(Addr, Address), 
            City = NVL(EmpCity, City), 
            State = NVL(EmpState, State),
            ZipCode = NVL(Zip, ZipCode),
            DOJ = NVL(DateOfJoining, DOJ)
        WHERE EmployeeID = EmpId
        RETURNING EmployeeID INTO GenEmpID;
    ELSE
        INSERT INTO MBTA_EMPLOYEE VALUES (EmpId, deptId, NULL, EmpName, EmpAge, Addr, EmpCity, EmpState, Zip, DateOfJoining)
        RETURNING EmployeeID INTO GenEmpID;
    END IF;
    COMMIT;
EXCEPTION
    WHEN invalidDeptEx THEN 
        DBMS_OUTPUT.PUT_LINE('Error: Department does not exist. No updates were made.');
    WHEN OTHERS THEN
        ROLLBACK;
END mbta_CreateOrUpdateEmployeeProfile;
/
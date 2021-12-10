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
        --GeneratedEmployeeID NUMBER;
        --EmployeeExists NUMBER;
        --BEGIN
        --    mbta_createorupdateemployeeprofile (178, 'Zeus Duke', NULL, NULL, 'San Fransisco', NULL, 33203, NULL, GeneratedEmployeeID, EmployeeExists);
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
GenEmpID OUT NUMBER,
EmpExists OUT NUMBER
)
AS
BEGIN
    SELECT 1 INTO EmpExists FROM MBTA_EMPLOYEE WHERE EmployeeID = EmpId;
    IF EmpExists > 0
    THEN
        UPDATE MBTA_EMPLOYEE 
        SET 
            DEPTID = DEPTID, 
            TRAINID = TRAINID, 
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
        INSERT INTO MBTA_EMPLOYEE VALUES (EmpId, 1, 1, EmpName, EmpAge, Addr, EmpCity, EmpState, Zip, DateOfJoining)
        RETURNING EmployeeID INTO GenEmpID;
    END IF;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
END mbta_CreateOrUpdateEmployeeProfile;
/
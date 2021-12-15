----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------
--Description: Stored Procedure to Create or Update Employee Login. 
--Author: Priyanka Kuklani 
--SAMPLE USAGE:
--      DECLARE 
--          GeneratedEmployeeID NUMBER :=0;
--          EmployeeExists NUMBER :=0;
--      BEGIN
--          mbta_CreateOrUpdateEmployeeLogin (200, 'user200', 'Pa$$w0rd.1', GeneratedEmployeeID, EmployeeExists);
--          DBMS_OUTPUT.PUT_LINE(GeneratedEmployeeID);
--          DBMS_OUTPUT.PUT_LINE(EmployeeExists);
--      END;
----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------
SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE mbta_CreateOrUpdateEmployeeLogin (
EmpId IN NUMBER,
UsrName IN VARCHAR2,
Pwd IN VARCHAR2,
GenEmpID OUT NUMBER,
LoginExists OUT NUMBER 
)
IS 
    LastLoginID NUMBER := 0;
    LastEmployeeID NUMBER := 0;
    userNameAlreadyTaken NUMBER := 0;
    userNameAlreadyTakenEx EXCEPTION;
BEGIN
    SELECT COUNT(1) INTO LoginExists FROM MBTA_EMPLOGIN WHERE EmployeeID = EmpId;
    IF NVL(LoginExists, 0) > 0
    THEN
        UPDATE MBTA_EMPLOGIN 
        SET 
            PASSWORD = Pwd
        WHERE EmployeeID = EmpId
        RETURNING EmployeeID INTO GenEmpID;
    ELSE
        SELECT COUNT(1) INTO userNameAlreadyTaken FROM MBTA_EMPLOGIN WHERE UserName = UsrName;
        IF userNameAlreadyTaken > 0
        THEN RAISE userNameAlreadyTakenEx;
        END IF;
        SELECT MAX(LOGINID) INTO LastLoginID FROM MBTA_EMPLOGIN;
        SELECT MAX(EMPLOYEEID) INTO LastEmployeeID FROM MBTA_EMPLOGIN;
        INSERT INTO MBTA_EMPLOGIN VALUES (LastLoginID + 1, LastEmployeeID + 1, UsrName, Pwd)
        RETURNING EmployeeID INTO GenEmpID;
    END IF;
    COMMIT;
EXCEPTION
    WHEN userNameAlreadyTakenEx THEN
        DBMS_OUTPUT.PUT_LINE('Error: User Name Already Taken. Please try with another user name. No updates were made.');
    WHEN OTHERS THEN
        ROLLBACK;
END mbta_CreateOrUpdateEmployeeLogin;
/
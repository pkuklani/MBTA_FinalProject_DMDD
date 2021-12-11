----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------
--Description: Stored Procedure to Authenticate Employee. 
--Author: Priyanka Kuklani  
--SAMPLE USAGE:
--        DECLARE 
--            IsAuthenticatedEmployee NUMBER := 0;
--        BEGIN
--            mbta_AuthenticateEmployee ('user201', 'Password', IsAuthenticatedEmployee);
--            DBMS_OUTPUT.PUT_LINE(IsAuthenticatedEmployee);
--        END;
----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------
SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE mbta_AuthenticateEmployee (
UsrName IN VARCHAR2,
Pwd IN VARCHAR2,
IsAuthenticatedUser OUT NUMBER
)
AS
BEGIN
    SELECT COUNT(1) INTO IsAuthenticatedUser FROM MBTA_EMPLOGIN WHERE UserName = UsrName AND Password = Pwd;
END mbta_AuthenticateEmployee;
/
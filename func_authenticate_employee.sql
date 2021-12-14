-------------------------------------------------------------------------------------------------------------------------
--Function to authenticate employee
--Sample Usage: 
--DECLARE
--    emp_id number := 0;
--BEGIN
--    emp_id := authenticate_employee('hgodin61', '30ZIwv3V5R7');
--    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_id);
--END;
-------------------------------------------------------------------------------------------------------------------------
SET SERVEROUTPUT ON;
CREATE OR REPLACE FUNCTION authenticate_employee(uname in mbta_emplogin.username%type, pwd in mbta_emplogin.password%type)
RETURN NUMBER
IS
employee_id NUMBER := 0;
BEGIN
SELECT MAX(employeeid) INTO employee_id from MBTA_EMPLOGIN WHERE UserName = uname AND Password = pwd;
return NVL(employee_id, 0);
end authenticate_employee;
/

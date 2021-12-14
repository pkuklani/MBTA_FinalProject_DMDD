-------------------------------------------------------------------------------------------------------------------------
--Function to authenticate passenger
--Sample Usage: 
--DECLARE
--    pass_id number := 0;
--BEGIN
--    pass_id := authenticate_passenger('hgodin61', '30ZIwv3V5R7');
--    DBMS_OUTPUT.PUT_LINE('Passenger ID: ' || pass_id);
--END;
-------------------------------------------------------------------------------------------------------------------------
SET SERVEROUTPUT ON;
CREATE OR REPLACE FUNCTION authenticate_passenger(uname in mbta_login.username%type, pwd in mbta_login.password%type)
RETURN NUMBER
IS
passenger_id NUMBER := 0;
BEGIN
SELECT MAX(passengerid) INTO passenger_id from MBTA_LOGIN WHERE UserName = uname AND Password = pwd;
return NVL(passenger_id, 0);
end authenticate_passenger;
/

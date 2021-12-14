CREATE OR REPLACE FUNCTION authenticate_passenger(uname in mbta_login.username%type, pwd in mbta_login.password%type)
RETURN NUMBER
IS
passenger_id NUMBER := 0;
BEGIN
SELECT MAX(passengerid) INTO passenger_id from MBTA_LOGIN WHERE UserName = uname AND Password = pwd;
return NVL(passenger_id, 0);
end authenticate_passenger;
/
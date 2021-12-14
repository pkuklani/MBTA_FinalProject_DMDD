CREATE OR REPLACE FUNCTION get_charlie_balance(passid in mbta_charlie.passengerid%type)
RETURN NUMBER
IS
charlie_balance NUMBER := 0;
BEGIN
SELECT SUM(BALANCE) INTO charlie_balance from MBTA_CHARLIE where passengerid=passid;
return charlie_balance;
end get_charlie_balance;
/

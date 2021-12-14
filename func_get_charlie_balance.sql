-------------------------------------------------------------------------------------------------------------------------
--Function to get Charlie Card Balance
--Sample Usage: 
--DECLARE
--    charlie_balance Number := 0;
--BEGIN
--    charlie_balance :=get_charlie_balance(218);
--    DBMS_OUTPUT.PUT_LINE('Charlie Balance: ' || charlie_balance);    
--END;
-------------------------------------------------------------------------------------------------------------------------
SET SERVEROUTPUT ON;
CREATE OR REPLACE FUNCTION get_charlie_balance(passid in mbta_charlie.passengerid%type)
RETURN NUMBER
IS
charlie_balance NUMBER := 0;
BEGIN
SELECT SUM(BALANCE) INTO charlie_balance from MBTA_CHARLIE where passengerid=passid;
return NVL(charlie_balance, 0);
end get_charlie_balance;
/



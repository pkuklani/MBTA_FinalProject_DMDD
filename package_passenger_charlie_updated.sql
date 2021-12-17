SET SERVEROUTPUT ON;
create or replace PACKAGE passenger_charlie AS 
   FUNCTION get_balance(passid in mbta_charlie.passengerid%type) RETURN NUMBER;
   PROCEDURE print_balance(passid mbta_charlie.passengerid%type); 
   PROCEDURE add_balance(passid in mbta_charlie.passengerid%type, rechargeAmount in mbta_charlie.balance%type);
   PROCEDURE deduct_balance(passid in mbta_charlie.passengerid%type, swipeAmount in mbta_charlie.balance%type);
END passenger_charlie; 
/
SET SERVEROUTPUT ON;
create or replace PACKAGE BODY passenger_charlie AS  

    FUNCTION get_balance(passid in mbta_charlie.passengerid%type)
    RETURN NUMBER
    IS
        charlie_balance NUMBER := 0;
        is_record_present NUMBER := 0;
        invalid_passid_ex EXCEPTION;
        no_charlie_ex EXCEPTION;
    BEGIN
        IF check_pass_id(passid) = 0
            THEN RAISE invalid_passid_ex;
        END IF;
        SELECT count(1) INTO is_record_present from MBTA_CHARLIE where passengerid=passid;
        IF is_record_present = 0 
            THEN RAISE no_charlie_ex; 
        END IF;
        SELECT SUM(BALANCE) INTO charlie_balance from MBTA_CHARLIE where passengerid=passid;
        dbms_output.put_line('Balance: '|| charlie_balance); 
        RETURN charlie_balance;
        EXCEPTION
            WHEN invalid_passid_ex THEN dbms_output.put_line('Invalid Passenger ID. Passenger record does not exist.'); 
            WHEN no_charlie_ex THEN dbms_output.put_line('Balance cannot be retrieved. No Charlie Card present for this Passenger ID'); 
            RETURN 0;
    END get_balance;
   
    PROCEDURE print_balance(passid in mbta_charlie.passengerid%type)
    IS
        charlie_balance NUMBER := 0;
        is_record_present NUMBER := 0;
        invalid_passid_ex EXCEPTION;
        no_charlie_ex EXCEPTION;
    BEGIN
        IF check_pass_id(passid) = 0
            THEN RAISE invalid_passid_ex;
        END IF;
        SELECT count(1) INTO is_record_present from MBTA_CHARLIE where passengerid=passid;
        IF is_record_present = 0 
            THEN RAISE no_charlie_ex; 
        END IF;
        SELECT SUM(BALANCE) INTO charlie_balance from MBTA_CHARLIE where passengerid=passid;
        dbms_output.put_line('Balance: '|| charlie_balance); 
        EXCEPTION
            WHEN invalid_passid_ex THEN dbms_output.put_line('Invalid Passenger ID. Passenger record does not exist.'); 
            WHEN no_charlie_ex THEN dbms_output.put_line('Balance cannot be retrieved. No Charlie Card present for this Passenger ID'); 
    END print_balance;
    
    PROCEDURE add_balance(passid in mbta_charlie.passengerid%type, rechargeAmount in mbta_charlie.balance%type)
    IS
        new_balance NUMBER := 0;
        is_record_present NUMBER := 0;
        invalid_amount_ex EXCEPTION;
        invalid_passid_ex EXCEPTION;
        no_charlie_ex EXCEPTION;
    BEGIN
        IF check_pass_id(passid) = 0
            THEN RAISE invalid_passid_ex;
        END IF;
        SELECT count(1) INTO is_record_present from MBTA_CHARLIE where passengerid=passid;
        IF is_record_present = 0 
            THEN RAISE no_charlie_ex; 
        END IF;
        IF rechargeAmount <= 0 
            THEN RAISE invalid_amount_ex; 
        END IF;
        UPDATE MBTA_CHARLIE SET Balance = NVL(Balance, 0) + NVL(rechargeAmount, 0) WHERE passengerid=passid;
        SELECT SUM(BALANCE) INTO new_balance from MBTA_CHARLIE where passengerid=passid;
        dbms_output.put_line('New Balance: '|| new_balance); 
        COMMIT;
        EXCEPTION
            WHEN invalid_amount_ex THEN dbms_output.put_line('Invalid input. Please enter a non-zero recharge amount.'); 
            WHEN invalid_passid_ex THEN dbms_output.put_line('Invalid Passenger ID. Passenger record does not exist.'); 
            WHEN no_charlie_ex THEN dbms_output.put_line('No Charlie Card present for this Passenger ID. Recharge failed.');         
    END add_balance;

    PROCEDURE deduct_balance(passid in mbta_charlie.passengerid%type, swipeAmount in mbta_charlie.balance%type)
    IS
        new_balance NUMBER := 0;
        cur_balance Number :=0;
        is_record_present NUMBER := 0;
        invalid_amount_ex EXCEPTION;
        invalid_passid_ex EXCEPTION;
        no_charlie_ex EXCEPTION;
        low_balance_ex EXCEPTION;
    BEGIN
        IF check_pass_id(passid) = 0
            THEN RAISE invalid_passid_ex;
        END IF;
        SELECT count(1) INTO is_record_present from MBTA_CHARLIE where passengerid=passid;
        IF is_record_present = 0 
            THEN RAISE no_charlie_ex; 
        END IF;
        IF swipeAmount <= 0 
            THEN RAISE invalid_amount_ex; 
        END IF;
        
        SELECT passenger_charlie.get_balance(passid) INTO cur_balance FROM DUAL;
        If cur_balance < swipeAmount
            then RAISE low_balance_ex;
        END IF;
        
        UPDATE MBTA_CHARLIE SET Balance = NVL(Balance, 0) - NVL(swipeAmount, 0) WHERE passengerid=passid;
        SELECT SUM(BALANCE) INTO new_balance from MBTA_CHARLIE where passengerid=passid;
        dbms_output.put_line('Transaction successful. New Balance: '|| new_balance); 
        COMMIT;
        EXCEPTION
            WHEN invalid_amount_ex THEN dbms_output.put_line('Invalid input. Please enter a non-zero swipe amount.'); 
            WHEN invalid_passid_ex THEN dbms_output.put_line('Invalid Passenger ID. Passenger record does not exist.'); 
            WHEN no_charlie_ex THEN dbms_output.put_line('No Charlie Card present for this Passenger ID. Try a different mode of payment.');
            WHEN low_balance_ex THEN dbms_output.put_line('Transaction failed. Low balance');
    END deduct_balance;

END passenger_charlie; 
/


--call passenger_charlie.print_balance(-1);
--call passenger_charlie.add_balance(218, 100);
--SELECT passenger_charlie.fget_balance(218) FROM DUAL;


--select * from mbta_charlie where passengerid = 872;

--call passenger_charlie.deduct_balance(872, 3);
--call passenger_charlie.deduct_balance(1872563638, 3);
--call passenger_charlie.deduct_balance(1, 3);
--call passenger_charlie.deduct_balance(872, -3);
--call passenger_charlie.deduct_balance(872, 1000);

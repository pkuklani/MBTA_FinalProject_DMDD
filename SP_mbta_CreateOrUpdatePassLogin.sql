--Description: Stored Procedure to Create or Update Passenger Login.
--SAMPLE USAGE:
--     DECLARE 
--          GenPassId  NUMBER :=0;
--          LoginExists NUMBER :=0;
--      BEGIN
--          mbta_CreateOrUpdatePassLogin (0, 'userPRI', 'Pa$$w0rd.99', GenPassId, LoginExists);
--          DBMS_OUTPUT.PUT_LINE(genpassid);
--          DBMS_OUTPUT.PUT_LINE(loginexists);
--      END;


--SELECT * FROM MBTA_LOGIN WHERE PASSENGERID=1997;



SET SERVEROUTPUT ON;
create or replace PROCEDURE mbta_CreateOrUpdatePassLogin(
PassId IN NUMBER,
UserName IN VARCHAR2,
Pwd IN VARCHAR2,
GenPassId OUT NUMBER,
LoginExists OUT NUMBER 
)
IS 
    LastLoginId NUMBER := 0;
    LastPassId NUMBER := 0;
BEGIN
    SELECT COUNT(1) INTO LoginExists FROM MBTA_LOGIN WHERE PASSENGERID = PassId;
    IF NVL(LoginExists, 0) > 0
    THEN
        UPDATE MBTA_LOGIN 
        SET 
            PASSWORD = Pwd
        WHERE PASSENGERID = PassId
        RETURNING PASSENGERID INTO GenPassID;
    ELSE
        SELECT MAX(LOGINID) INTO LastLoginId FROM MBTA_LOGIN;
        SELECT MAX(PASSENGERID) INTO LastPassId FROM MBTA_LOGIN;
        INSERT INTO MBTA_Login VALUES (LastLoginId + 1, LastPassId + 1, UserName, Pwd)
        RETURNING PASSENGERID INTO GenPassId;
    END IF;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
END mbta_CreateOrUpdatePassLogin;
/


 



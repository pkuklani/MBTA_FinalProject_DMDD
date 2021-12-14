SET SERVEROUTPUT ON;
create or replace PROCEDURE mbta_CreateOrUpdatePassProfile (
PassId IN NUMBER,
PassFname IN VARCHAR2,
PassLname IN VARCHAR2,
PassDob IN VARCHAR2,
Addr IN VARCHAR2,
PassCity IN VARCHAR2,
PassState IN VARCHAR2,
Zip IN NUMBER,
GenPassId OUT NUMBER,
PassExists OUT NUMBER
)
AS
BEGIN
    SELECT COUNT(1) INTO PassExists FROM MBTA_PASSENGER WHERE PASSENGERID = PassId;
    IF NVL(PassExists, 0) > 0
    THEN
        UPDATE MBTA_PASSENGER 
        SET 
            PASSENGERFNAME = NVL(PassFname, PASSENGERFNAME), 
            PASSENGERLNAME = NVL(PassLname, PASSENGERLNAME), 
            DOB = NVL(PassDob, DOB),
            Address = NVL(Addr, Address), 
            City = NVL(PassCity, City), 
            State = NVL(PassState, State),
            ZipCode = NVL(Zip, ZipCode)
        WHERE PASSENGERID = PassId
        RETURNING PASSENGERID INTO GenPassId;
    ELSE
        INSERT INTO MBTA_PASSENGER VALUES (PassId, PassFname, PassLname, PassDob, Addr, PassCity, PassState, Zip)
        RETURNING PassengerID INTO GenPassID;
    END IF;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
END mbta_CreateOrUpdatePassProfile;
/

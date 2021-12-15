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

create or replace function check_pass_id(pid in mbta_passenger.passengerid%type)
return int
is 
check_pass int;
begin
select count(1) into check_pass from mbta_passenger where passengerid=pid;
return check_pass;
end check_pass_id;
/

----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------
--Description: Stored Procedure to Create a new department type. 

--SAMPLE USAGE:
--BEGIN
--        mbta_CreateDeptType ('Servicing');
        
--     END;
----------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------

SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE mbta_CreateDeptType
(
    DeptTypeName IN VARCHAR2
)
IS LastDeptTypeId NUMBER := 0;
IsRecordPresent NUMBER :=0;
DeptExists EXCEPTION;
BEGIN

SELECT COUNT(1) INTO IsRecordPresent FROM MBTA_DEPTTYPE WHERE deptname = DeptTypeName;
IF isrecordpresent>0
THEN  RAISE DeptExists;
ELSE 


SELECT MAX(depttypeid) INTO lastdepttypeid FROM MBTA_DEPTTYPE;


INSERT INTO mbta_depttype (depttypeid, deptname) 
VALUES (LastDeptTypeId+1,DeptTypeName);
COMMIT;
END IF;

EXCEPTION
 WHEN DeptExists THEN
        DBMS_OUTPUT.PUT_LINE('Error: Department Type is Already Present. No updates were made.');
    WHEN OTHERS THEN
        ROLLBACK;
END mbta_CreateDeptType;
/

--SAMPLE EXECUTION SCRIPTS
call mbta_createdepttype ('Servicing');
call mbta_createdepttype ('Guards');

----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------
--Description: Stored Procedure to Create a new department. 

--SAMPLE USAGE:
--BEGIN
--    mbta_CreateDept('Servicing', 'Driver');
--END;
----------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------

SET SERVEROUTPUT ON;
create or replace PROCEDURE mbta_CreateDept
(
InDeptName IN VARCHAR2,
RoleInDept IN VARCHAR2
)
IS DtId NUMBER :=0;
IsDTypeRecordPresent NUMBER := 0;
IsRecordPresent NUMBER :=0;
LastDeptId NUMBER := 0;
DeptExists EXCEPTION;
InvalidDeptTypeEx EXCEPTION;

BEGIN

SELECT COUNT(1) INTO IsDTypeRecordPresent FROM mbta_depttype WHERE DEPTNAME=InDeptName;
IF IsDTypeRecordPresent = 0
THEN RAISE InvalidDeptTypeEx;
END IF;

SELECT MIN(DEPTTYPEID) INTO DtId FROM mbta_depttype WHERE DEPTNAME=InDeptName;

IF DtId IS NULL OR DtId = 0 
THEN RAISE InvalidDeptTypeEx;
END IF;

SELECT COUNT(1) INTO IsRecordPresent FROM MBTA_DEPT WHERE DeptTypeId = DtId AND ROLE = RoleInDept;

IF isrecordpresent>0
THEN  RAISE DeptExists;
ELSE 

SELECT MAX(DEPTID) INTO LastDeptId FROM MBTA_DEPT;
INSERT INTO MBTA_DEPT(deptid, depttypeid,Role)
VALUES (LastDeptId+1, DtId,RoleInDept);
COMMIT;

END IF;

EXCEPTION
    WHEN InvalidDeptTypeEx THEN
        DBMS_OUTPUT.PUT_LINE('Error: Department Type does not exist. No updates were made.');
    WHEN DeptExists THEN
        DBMS_OUTPUT.PUT_LINE('Error: This Department is Already Present. No updates were made.');
    WHEN OTHERS THEN
        ROLLBACK;
END mbta_CreateDept;
/

--SAMPLE EXECUTION SCRIPTS
call mbta_createdept('Servicing', 'Red Line Servicemen');
call mbta_createdept('Guards', 'Red Line Guards');

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

----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------
--Description: Stored Procedure to Create or Update Employee Profile. 
--             If Employee ID passed exists, the same record will be updated with the input values passed.
--             If Employee ID passed is not present, a new profile record will be created
--             Stored Procedure will return the Employee ID and whether a New Employee was created or NOT.
--Author: Priyanka Kuklani
--SAMPLE USAGE:
    --TO UPDATE
        --DECLARE 
        --GeneratedEmployeeID NUMBER :=0;
        --EmployeeExists NUMBER :=0;
        --BEGIN
        --    mbta_createorupdateemployeeprofile (178, 'Zeus Duke', NULL, NULL, 'San Fransisco', NULL, 33203, NULL, GeneratedEmployeeID, EmployeeExists);
        --    DBMS_OUTPUT.PUT_LINE(GeneratedEmployeeID);
        --    DBMS_OUTPUT.PUT_LINE(EmployeeExists);
        --END;
----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------
SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE mbta_CreateOrUpdateEmployeeProfile (
EmpId IN NUMBER,
EmpName IN VARCHAR2,
EmpAge IN NUMBER,
Addr IN VARCHAR2,
EmpCity IN VARCHAR2,
EmpState IN VARCHAR2,
Zip IN NUMBER,
DateOfJoining IN DATE,
DeptName IN VARCHAR2,
GenEmpID OUT NUMBER,
EmpExists OUT NUMBER
)
IS
    deptId NUMBER := 0;
    invalidDeptEx EXCEPTION;
BEGIN
    SELECT COUNT(1) INTO EmpExists FROM MBTA_EMPLOYEE WHERE EmployeeID = EmpId;
    SELECT MIN(NVL(DEPTID, 0)) INTO deptId FROM MBTA_DEPT WHERE ROLE = DeptName;
    IF deptId IS NULL OR deptId <= 0
    THEN 
        RAISE invalidDeptEx;
    END IF;
    IF NVL(EmpExists, 0) > 0
    THEN
        UPDATE MBTA_EMPLOYEE 
        SET 
            DEPTID = DEPTID, 
            NAME = NVL(EmpName, NAME), 
            AGE = NVL(EmpAge, AGE), 
            Address = NVL(Addr, Address), 
            City = NVL(EmpCity, City), 
            State = NVL(EmpState, State),
            ZipCode = NVL(Zip, ZipCode),
            DOJ = NVL(DateOfJoining, DOJ)
        WHERE EmployeeID = EmpId
        RETURNING EmployeeID INTO GenEmpID;
    ELSE
        INSERT INTO MBTA_EMPLOYEE VALUES (EmpId, deptId, NULL, EmpName, EmpAge, Addr, EmpCity, EmpState, Zip, DateOfJoining)
        RETURNING EmployeeID INTO GenEmpID;
    END IF;
    COMMIT;
EXCEPTION
    WHEN invalidDeptEx THEN 
        DBMS_OUTPUT.PUT_LINE('Error: Department does not exist. No updates were made.');
    WHEN OTHERS THEN
        ROLLBACK;
END mbta_CreateOrUpdateEmployeeProfile;
/

--EXAMPLE TO CREATE EMPLOYEE
DECLARE 
    GeneratedEmployeeID NUMBER :=0;
    EmployeeExists NUMBER :=0;
BEGIN
    mbta_CreateOrUpdateEmployeeLogin (0, 'pkuklani', 'Pa$$w0rd.1', GeneratedEmployeeID, EmployeeExists);
    mbta_createorupdateemployeeprofile (GeneratedEmployeeID, 'Priyanka Kuklani', 27, '2765 Boxer Way', 'San Fransisco', 'CA', 33203, TO_DATE('2019-01-01','YYYY-MM-DD'), 'Red Line Train Operators', GeneratedEmployeeID, EmployeeExists);
    DBMS_OUTPUT.PUT_LINE(GeneratedEmployeeID);
    DBMS_OUTPUT.PUT_LINE(EmployeeExists);
END;

--EXAMPLE TO SHOW VALIDATION WHEN USER NAME IS ALREADY TAKEN
DECLARE 
    GeneratedEmployeeID NUMBER :=0;
    EmployeeExists NUMBER :=0;
BEGIN
    mbta_CreateOrUpdateEmployeeLogin (0, 'pkuklani', 'Pa$$w0rd.1', GeneratedEmployeeID, EmployeeExists);
    DBMS_OUTPUT.PUT_LINE(GeneratedEmployeeID);
    DBMS_OUTPUT.PUT_LINE(EmployeeExists);
END;

--EXAMPLE TO UPDATE EMPLOYEE ADDRESS
DECLARE 
    GeneratedEmployeeID NUMBER :=204;
    EmployeeExists NUMBER :=0;
BEGIN
    mbta_createorupdateemployeeprofile (GeneratedEmployeeID, 'Priyanka Kuklani', NULL, '2765 Vendor Way', 'San Fransisco', 'CA', 33203, NULL, 'Red Line Train Operators', GeneratedEmployeeID, EmployeeExists);
END;
select * from mbta_employee where employeeid = 204;
--

--EXAMPLE TO UPDATE PASSWORD
DECLARE 
    GeneratedEmployeeID NUMBER :=0;
    EmployeeExists NUMBER :=0;
BEGIN
    mbta_CreateOrUpdateEmployeeLogin (204, 'pkuklani', 'Pa$$w0rd.1', GeneratedEmployeeID, EmployeeExists);
    DBMS_OUTPUT.PUT_LINE(GeneratedEmployeeID);
    DBMS_OUTPUT.PUT_LINE(EmployeeExists);
END;
select * from mbta_emplogin where employeeid = 204;
--

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
SET SERVEROUTPUT ON;
create or replace PROCEDURE mbta_CreateOrUpdatePassLogin(
PassId IN NUMBER,
UsrName IN VARCHAR2,
Pwd IN VARCHAR2,
GenPassId OUT NUMBER,
LoginExists OUT NUMBER 
)
IS 
    LastLoginId NUMBER := 0;
    LastPassId NUMBER := 0;
    userNameAlreadyTaken NUMBER := 0;
    userNameAlreadyTakenEx EXCEPTION;
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
        SELECT COUNT(1) INTO userNameAlreadyTaken FROM MBTA_LOGIN WHERE UserName = UsrName;
        IF userNameAlreadyTaken > 0
        THEN RAISE userNameAlreadyTakenEx;
        END IF;
        SELECT MAX(LOGINID) INTO LastLoginId FROM MBTA_LOGIN;
        SELECT MAX(PASSENGERID) INTO LastPassId FROM MBTA_LOGIN;
        INSERT INTO MBTA_Login VALUES (LastLoginId + 1, LastPassId + 1, UsrName, Pwd)
        RETURNING PASSENGERID INTO GenPassId;
    END IF;
    COMMIT;
EXCEPTION
    WHEN userNameAlreadyTakenEx THEN
        DBMS_OUTPUT.PUT_LINE('Error: User Name Already Taken. Please try with another user name. No updates were made.');
    WHEN OTHERS THEN
        ROLLBACK;
END mbta_CreateOrUpdatePassLogin;
/

--Description: Stored Procedure to Create or Update Passenger Profile.
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

--EXAMPLE TO CREATE A NEW PASSENGER
     DECLARE 
          GenPassId  NUMBER :=0;
          LoginExists NUMBER :=0;
      BEGIN
          mbta_CreateOrUpdatePassLogin (0, 'pkuklani', 'Pa$$w0rd.99', GenPassId, LoginExists);
          mbta_CreateOrUpdatePassProfile(GenPassId, 'Priyanka', 'Kuklani', TO_DATE('1994-11-18', 'YYYY-MM-DD'), '2765 Vendor Way', 'San Fransisco', 'CA', 33203, GenPassId, LoginExists);
          DBMS_OUTPUT.PUT_LINE(genpassid);
          DBMS_OUTPUT.PUT_LINE(loginexists);
      END;
      
--EXAMPLE TO UPDATE EXISTING PASSENGER DATA (ADDRESS)
     DECLARE 
          GenPassId  NUMBER :=0;
          LoginExists NUMBER :=0;
      BEGIN
          mbta_CreateOrUpdatePassProfile(1999, 'Priyanka', 'Kuklani', TO_DATE('1994-11-18', 'YYYY-MM-DD'), '2765 Boxer Way', 'San Fransisco', 'CA', 33203, GenPassId, LoginExists);
          DBMS_OUTPUT.PUT_LINE(genpassid);
          DBMS_OUTPUT.PUT_LINE(loginexists);
      END;
      
--EXAMPLE TO UPDATE PASSENGER PASSWORD
     DECLARE 
          GenPassId  NUMBER :=0;
          LoginExists NUMBER :=0;
      BEGIN
          mbta_CreateOrUpdatePassLogin (1999, 'pkuklani', 'Pa$$w0rd.1', GenPassId, LoginExists);
          DBMS_OUTPUT.PUT_LINE(genpassid);
          DBMS_OUTPUT.PUT_LINE(loginexists);
      END;   

----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------
--Description: View that returns Employee Profile
--Author: Priyanka Kuklani  
--SAMPLE USAGE:
--  SELECT * FROM MBTA_EMPLOYEEPROFILE WHERE EMPLOYEEID = 182;
----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE VIEW MBTA_EMPLOYEEPROFILE 
AS 
SELECT ME.EMPLOYEEID, 
        ME.NAME, 
        MDT.DEPTNAME, 
        MD.ROLE, 
        ME.AGE, 
        ME.ADDRESS, 
        ME.CITY, 
        ME.STATE, 
        ME.ZIPCODE, 
        ME.DOJ AS DATEOFJOINING,
        FLOOR(MONTHS_BETWEEN(SYSDATE, ME.DOJ)) AS NOOFMONTHSINSERVICE,
        MT.TRAINSERIALNO 
FROM MBTA_EMPLOYEE ME
JOIN MBTA_DEPT MD
    ON ME.DEPTID = MD.DEPTID
JOIN MBTA_DEPTTYPE MDT
    ON MD.DEPTTYPEID = MDT.DEPTTYPEID
LEFT OUTER JOIN MBTA_TRAININFO MT
    ON MT.TRAINID = ME.TRAINID;
/
    
CREATE OR REPLACE VIEW MBTA_PassengerProfile
AS 
SELECT 

        ml.username,
        mp.passengerid,
        mp.passengerfname,
        mp.passengerlname,
        mp.dob,
        mp.address,
        mp.city,
        mc.balance
              
FROM mbta_passenger MP
JOIN MBTA_Login ML
    ON mp.passengerid = ml.passengerid   
LEFT OUTER JOIN mbta_charlie MC
ON mc.passengerid=mp.passengerid;
/
    
-------------------------------------------------------------------------------------------------------------
--Description : Charlie Card Package

SET SERVEROUTPUT ON;
create or replace PACKAGE passenger_charlie AS 
   FUNCTION get_balance(passid in mbta_charlie.passengerid%type) RETURN NUMBER;
   PROCEDURE print_balance(passid mbta_charlie.passengerid%type); 
   PROCEDURE add_balance(passid in mbta_charlie.passengerid%type, rechargeAmount in mbta_charlie.balance%type);
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

END passenger_charlie; 
/

--call passenger_charlie.print_balance(-1);
--call passenger_charlie.add_balance(218, 100);
--SELECT passenger_charlie.fget_balance(218) FROM DUAL;
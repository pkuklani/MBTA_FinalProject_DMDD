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

/*
--SAMPLE EXECUTION SCRIPTS
call mbta_createdepttype ('Servicing');
call mbta_createdepttype ('Guards');
*/
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

/*
--SAMPLE EXECUTION SCRIPTS
call mbta_createdept('Servicing', 'Red Line Servicemen');
call mbta_createdept('Guards', 'Red Line Guards');
*/
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

/*
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
*/
-----------------------------------------------------------------------------------------------------------

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
---------------------------------------------------------------------------------------------------------------
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

/*
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
--     DECLARE 
--          GenPassId  NUMBER :=0;
--          LoginExists NUMBER :=0;
--      BEGIN
--          mbta_CreateOrUpdatePassLogin (1999, 'pkuklani', 'Pa$$w0rd.1', GenPassId, LoginExists);
          DBMS_OUTPUT.PUT_LINE(genpassid);
          DBMS_OUTPUT.PUT_LINE(loginexists);
      END;   
*/

---------------------------------------------------------------------------------------------------------------------------------
/* Procedure to insert value in mbta train current status
*/

Create or replace Procedure insert_into_mbta_traincurrentstatus(
latitude mbta_traincurrentstatus.latitude%type,
longitude mbta_traincurrentstatus.longitude%type,
intrainid mbta_traincurrentstatus.trainid%type
)
as
null_exception_latitude exception;
null_exception_longitude exception;
null_exception_trainid exception;
train_idnotfound exception;
v_count number; 
begin
select count(*) into v_count from mbta_traininfo t1 where t1.trainid=intrainid;
if(intrainid is null) then
    raise null_exception_trainid;
elsif(v_count=0) then
    raise train_idnotfound;
elsif(latitude is null) then
    raise null_exception_latitude;
elsif(longitude is null) then
    raise null_exception_longitude;
else
    insert into mbta_traincurrentstatus values(seq_mbta_traincurrentstatus.nextval,latitude,longitude,intrainid);
    commit;
end if;
/*   Exceptions    */

Exception 
        when 
            null_exception_trainid 
        then
            raise_application_error(-20009,'Train ID cannot be null');
        when 
            null_exception_latitude
        then
            raise_application_error(-20009,'Latitude cannot be null');
        when 
            null_exception_longitude
        then
            raise_application_error(-20009,'Longitude cannot be null');  
        when 
            train_idnotfound
        then
            raise_application_error(-20001,'This type of train is not found');
end; 
/

/*  WRONG TRAIN ID*/
--call insert_into_mbta_traincurrentstatus(23.34,34.54,500);

/* Null input */
--call insert_into_mbta_traincurrentstatus(23.34,null,500);


--call insert_into_mbta_traincurrentstatus(23.34,null,500);


--------------------------------------------------------------------------------------------------------
/* Procedure to insert Scehdule of the train 

Used max to get last schedule id not Sequence
)*/


create or replace procedure insert_schedule(
train_id  mbta_schedule.trainid%type,       --1
route_id mbta_schedule.routeid%type,        --2
train_time mbta_schedule.traintime%type     --3
)
as
null_exception_trainid exception;
null_exception_routeid exception;
null_exception_traintime exception;
invalid_trainid exception;
invalid_routeid exception;
invalid_timeformat exception;
trainid_count number;
routeid_count number;
scheduleid_fetch number;
 CURSOR train_id_count_cursor
    IS
    select count(*) into trainid_count from mbta_traininfo where trainid=train_id;
 CURSOR route_id_count_cursor
    IS
    select count(*) into routeid_count from mbta_routeinfo where routeid=route_id;
begin
open train_id_count_cursor;
open route_id_count_cursor;
fetch train_id_count_cursor into trainid_count;
fetch route_id_count_cursor into routeid_count;
if(train_id is null) then
    raise null_exception_trainid;
elsif(route_id is null) then
    raise null_exception_routeid;
elsif(train_time is null) then
    raise null_exception_traintime;
elsif(trainid_count=0)then
    raise invalid_trainid;
elsif(routeid_count=0) then
    raise invalid_routeid;
elsif(check_date_format(train_time)=0) then
    raise invalid_timeformat;
else
    select scheduleid into scheduleid_fetch from mbta_schedule where scheduleid in (select max(scheduleid) from mbta_schedule);
    scheduleid_fetch:=scheduleid_fetch+1;
    insert into mbta_schedule values(scheduleid_fetch,train_id,route_id,train_time);
    commit;
end if;
 Exception
    when 
        null_exception_trainid 
    then 
        raise_application_error(-20009,'Train ID is empty,please enter Train ID');
    when
        null_exception_routeid
    then 
        raise_application_error(-20009,'Route ID cannot be empty,please enter Route ID');
    when 
        null_exception_traintime
    then
        raise_application_error(-20009,'Train Time is empty please enter time');
    when 
        invalid_trainid
    then
        raise_application_error(-20000, 'Train ID is not in our records please enter valid Train ID.');
    when 
        invalid_routeid
    then
        raise_application_error(-20000,'Route ID is not in our records please enter valid Route ID');
    when
        invalid_timeformat
    then
        raise_application_error(-20000,'Invalid time format.Please enter in this format HH:MM:SS');
close train_id_count_cursor;
end;
/


--call insert_schedule(2,3,'12:34:34');
-- Null values
--call insert_schedule(null,3,'12:34:45 PM');

-- Wrong Time Format
--call insert_schedule(34,3,'12/34/54');

---------------------------------------------------------------------------------------------------------------------------

-- Insert Train info
Create or replace procedure insert_into_traininfo(
year_ofmanufacturing mbta_traininfo.yearofmanufacturing%type,
last_servicedate mbta_traininfo.lastservicedate%type,
capacity mbta_traininfo.capacity%type,
employeeid mbta_traininfo.employeeid%type
)
as
next_trainid number;
next_trainserialno number;
validate_manu_service exception;
null_exception_yearofmanufacturing exception;
null_exception_lastservicedate exception;
null_exception_capacity exception;
null_exception_employeeid exception;
invalid_employeeid exception;
begin
next_trainid:=next_trainid_traininfo;
next_trainserialno:=next_trainserialno_traininfo;
--check if service date is more than manufacturing date
if(year_ofmanufacturing is null)then
    raise null_exception_yearofmanufacturing;
elsif(last_servicedate is null) then
    raise null_exception_lastservicedate;
elsif(capacity is null) then
    raise null_exception_capacity;
elsif(employeeid is null) then
    raise null_exception_employeeid;
else
    if(check_service_manu(year_ofmanufacturing,last_servicedate)=1) then
    if(check_employee_id(employeeid)=1) then
        insert into mbta_traininfo values(next_trainid,next_trainserialno,year_ofmanufacturing,last_servicedate,capacity,employeeid);
        commit;
    else
            raise invalid_employeeid;
    end if;
    else
        raise validate_manu_service;
    end if;
end if;
exception 
    when validate_manu_service then
    raise_application_error(-20000,'Check manufacturing date and service date. Service date should be greater than manufacturing date');
    when null_exception_yearofmanufacturing then
    raise_application_error(-20000,'Year of manufacturing cannot be null');
    when null_exception_capacity  then
    raise_application_error(-20000,'Capacity of train cannot be null or 0');
    when null_exception_employeeid then
    raise_application_error(-20000,'Employee ID cannot be null');
    when null_exception_lastservicedate then
    raise_application_error(-20000,'Last Service Date cannot be null');
    when invalid_employeeid then
    raise_application_error(-20001,'Invalid Employee Id');
end;
/



/*
call insert_into_traininfo(2020,'11-Sep-21',23,93);

call insert_into_traininfo(2022,'11-Sep-21',23,93);

call insert_into_traininfo(null,'11-Sep-21',23,93);

call insert_into_traininfo(2022,null,23,93);

call insert_into_traininfo(2022,'11-Sep-21',null,93);

call insert_into_traininfo(2020,'11-Sep-21',23,null);

call insert_into_traininfo(2020,'11-Sep-21',23,1999);
*/



-- Check constraint 
Create or replace procedure insert_into_mbta_station(
route_id mbta_routeinfo.routeid%type,
station_name mbta_station.StationName%type,
latitude mbta_station.latitude%type,
longitude mbta_station.longitude%type,
stationzipcode mbta_station.stationZipCode%type,
stationstatus mbta_station.status%type,
stationseq mbta_station.stationseq%type,
prevstationseq mbta_station.prevseq%type
)
as
null_routeid exception;
null_stationname exception;
null_latitude exception;
null_longitude exception;
null_zipcode exception;
null_stationstatus exception;
begin
if(route_id is null)then
raise null_routeid;
elsif(station_name is null) then
raise null_stationname;
elsif(latitude is null)then
raise null_latitude;
elsif(longitude is null) then
raise null_longitude;
elsif(stationzipcode is null) then
raise null_zipcode;
elsif(stationstatus is null) then
raise null_stationstatus;
else
insert into mbta_station values(seq_mbta_station.nextval,route_id,station_name,latitude,longitude,stationzipcode,stationstatus,stationseq,prevstationseq);
commit;
end if;
end;
/

--call insert_into_mbta_station(7,'Lechmere',02115,42.370949,-71.07964,'Y',-1,17);


-- Get Route


SET SERVEROUTPUT ON;
create or replace procedure get_miles(from_station mbta_station.stationname%type,to_station mbta_station.stationname%type)
as
lat1 number(20,18);
lat2 number(20,18);
long1 number(20,18);
long2 number(20,18);
dist number(8,6);
begin 
select latitude,longitude into lat1,long1 from mbta_station where stationname=from_station;
select latitude,longitude into lat2,long2 from mbta_station where stationname=to_station;
 select distance(lat1,long1,lat2,long2) into dist from dual;
dbms_output.put_line('Distance from ' || from_station || ' to ' || to_station || ' is ' ||dist ||' kms'); 
dist:=dist*0.621371;
dbms_output.put_line('Distance from '|| from_station || ' to '|| to_station || ' is ' || dist || ' miles'); 

end;
/


--call get_miles('Copley','Government Center');



-----------------------Next Station-------------------------
set serveroutput on;
create or replace procedure get_next_station(current_s mbta_station.stationname%type,to_s mbta_station.stationname%type)
as
currentseq number;
currentpseq number;
toseq number;
topseq number;
stationans varchar(50);
begin
select stationseq,prevseq into currentseq,currentpseq from mbta_station where stationname=current_s;
select stationseq,prevseq into toseq,topseq from mbta_station where stationname=to_s;

if(currentseq=toseq)then
dbms_output.put_line('This is last station of the route');
elsif(currentseq>toseq) then
select stationname into stationans from mbta_station where stationseq=currentseq-1;
dbms_output.put_line('Next Station '||stationans);
elsif(currentseq<toseq) then
select stationname into stationans from mbta_station where stationseq=currentseq+1;
dbms_output.put_line('Next Station '||stationans);
end if;
end;
/


/*
call get_next_station('Copley','Mission Park');

call get_next_station('Mission Park','Copley');

call get_next_station('Heath Street','Heath Street');

call get_next_station('Lechmere','Lechmere');
*/




------------------GET WHOLE ROUTE-------------

set serveroutput on;

create or replace procedure get_route(from_s mbta_station.stationname%type,to_s mbta_station.stationname%type)
as
currentseq number;
currentpseq number;
toseq number;
topseq number;
stationans varchar(50); 
begin
select stationseq,prevseq into currentseq,currentpseq from mbta_station where stationname=from_s;
select stationseq,prevseq into toseq,topseq from mbta_station where stationname=to_s;
if(currentseq=toseq)then
dbms_output.put_line('This is last station of the route');

-- Lechmere To heath Street
elsif(currentseq=-1)then
select count(*) into currentseq from mbta_station where routeid=(select routeid from mbta_station where stationname=from_s);
for a in toseq .. currentseq-1 loop
currentseq:=currentseq-1;
select stationname into stationans from mbta_station where stationseq=currentseq;
dbms_output.put_line(stationans);
end loop;


-- Heath Street to lechmere
elsif(currentpseq=0)then

select count(*) into toseq from mbta_station where routeid=(select routeid from mbta_station where stationname=from_s);
for a in currentseq .. toseq loop
if (currentseq=18) then
select stationname into stationans from mbta_station where stationseq=-1;
dbms_output.put_line(stationans);
else
select stationname into stationans from mbta_station where stationseq=currentseq;
currentseq:=currentseq+1;
dbms_output.put_line(stationans);
end if;
end loop;


elsif(currentseq>toseq) then
for a in toseq .. currentseq loop
select stationname into stationans from mbta_station where stationseq=currentseq;
currentseq:=currentseq-1;
dbms_output.put_line(stationans);
end loop;
elsif(currentseq<toseq) then
for a in currentseq .. toseq loop
select stationname into stationans from mbta_station where stationseq=currentseq;
currentseq:=currentseq+1;
dbms_output.put_line(stationans);
end loop;
end if;
end;
/

/*call get_route('Copley','Mission Park');

call get_route('Mission Park','Copley');

call get_route('Heath Street','Heath Street');

call get_route('Lechmere','Lechmere');

call get_route('Heath Street','Lechmere');

call get_route('Lechmere','Heath Street');
*/


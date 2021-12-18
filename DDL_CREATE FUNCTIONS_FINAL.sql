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


-------------------------------------------------------------------------------------------------------------------------
--Function to check if Passenger ID exists
-------------------------------------------------------------------------------------------------------------------------

SET SERVEROUTPUT ON;
create or replace function check_pass_id(pid in mbta_passenger.passengerid%type)
return int
is 
check_pass int;
begin
select count(1) into check_pass from mbta_passenger where passengerid=pid;
return check_pass;
end check_pass_id;
/

--Function to 

create or replace function check_date_format(str in Varchar2)
return int
is
begin
if(regexp_like(str,'^.*:*.:.*$'))then
return 1;
else
return 0;
end if;
end check_date_format;
/

--select check_date_format('21:34:43') from dual;

--Function to
create or replace function next_trainid_traininfo
return int
is
next_trainid int;
begin
select trainid into next_trainid from mbta_traininfo where trainid in (select max(trainid) from mbta_traininfo);
return next_trainid+1;
end next_trainid_traininfo;
/

--select next_trainid_traininfo from dual;

--Function to 
create or replace function next_trainserialno_traininfo
return int
is
next_trainserialno int;
begin
select trainserialno into next_trainserialno from mbta_traininfo where trainserialno in (select max(trainserialno) from mbta_traininfo);
return next_trainserialno+1;
end next_trainserialno_traininfo;
/

--select next_trainserialno_traininfo from dual;

--Function to
create or replace function check_service_manu(yearofmanu_in in number,lastservicedate_in  in date)
return int
is 
check_year int;
begin
select extract(year from to_date(lastservicedate_in,'DD-MON-YY')) into check_year from dual;
if(check_year>yearofmanu_in)then
dbms_output.put_line('Not valid year');
return 1;
else
return 0;
end if;
end check_service_manu;
/


--service date greater than manufacturing year
--select check_service_manu(2021,'24-Jan-2020') from dual; 
--service date less than manufacturing year
--select check_service_manu(2020,'24-Jan-2021') from dual; 

--Function to

create or replace function check_employee_id(empid in mbta_employee.employeeid%type)
return int
is 
check_emp int;
begin
select count(*) into check_emp from mbta_employee where employeeid=empid;
return check_emp;
end check_employee_id;
/

--select check_employee_id(1) from dual;

--select check_employee_id(1999) from dual;


--Function to

create or replace FUNCTION distance (Lat1 IN NUMBER,
                                     Lon1 IN NUMBER,
                                     Lat2 IN NUMBER,
                                     Lon2 IN NUMBER,
                                     Radius IN NUMBER DEFAULT 3963) RETURN NUMBER IS
 -- Convert degrees to radians
 DegToRad NUMBER := 57.29577951;

BEGIN
  RETURN(NVL(Radius,0) * ACOS((sin(NVL(Lat1,0) / DegToRad) * SIN(NVL(Lat2,0) / DegToRad)) +
        (COS(NVL(Lat1,0) / DegToRad) * COS(NVL(Lat2,0) / DegToRad) *
         COS(NVL(Lon2,0) / DegToRad - NVL(Lon1,0)/ DegToRad))));
END;
/




----- check next train

--create or replace function check_next_train_for_route(route_id in mbta_schedule.routeid%type, start_time in mbta_schedule.traintime%type)
--return int 
--is next_train_id INT;
--begin

--select TRAINID into next_train_id from mbta_schedule where traintime > start_time and route_id=routeid and trainid in(select max(trainid) from mbta_schedule);

--return next_train_id;

--end check_next_train_for_route;


--select check_next_train_for_route(2,to_char(systimestamp,'HH:MM:SS')) from dual;

--desc mbta_schedule;


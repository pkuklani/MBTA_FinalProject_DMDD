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

select check_date_format('21:34:43') from dual;


create or replace function next_trainid_traininfo
return int
is
next_trainid int;
begin
select trainid into next_trainid from mbta_traininfo where trainid in (select max(trainid) from mbta_traininfo);
return next_trainid+1;
end next_trainid_traininfo;
/

select next_trainid_traininfo from dual;


create or replace function next_trainserialno_traininfo
return int
is
next_trainserialno int;
begin
select trainserialno into next_trainserialno from mbta_traininfo where trainserialno in (select max(trainserialno) from mbta_traininfo);
return next_trainserialno+1;
end next_trainserialno_traininfo;
/

select next_trainserialno_traininfo from dual;

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
select check_service_manu(2021,'24-Jan-2020') from dual; 
--service date less than manufacturing year
select check_service_manu(2020,'24-Jan-2021') from dual; 

create or replace function check_employee_id(empid in mbta_employee.employeeid%type)
return int
is 
check_emp int;
begin
select count(*) into check_emp from mbta_employee where employeeid=empid;
return check_emp;
end check_employee_id;
/

select check_employee_id(1) from dual;

select check_employee_id(1999) from dual;




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



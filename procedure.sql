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
call insert_into_mbta_traincurrentstatus(23.34,34.54,500);

/* Null input */
call insert_into_mbta_traincurrentstatus(23.34,null,500);


call insert_into_mbta_traincurrentstatus(23.34,null,500);


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


call insert_schedule(2,3,'12:34:34');
-- Null values
call insert_schedule(null,3,'12:34:45 PM');

-- Wrong Time Format
call insert_schedule(34,3,'12/34/54');



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



call insert_into_traininfo(2020,'11-Sep-21',23,93);

call insert_into_traininfo(2022,'11-Sep-21',23,93);

call insert_into_traininfo(null,'11-Sep-21',23,93);

call insert_into_traininfo(2022,null,23,93);

call insert_into_traininfo(2022,'11-Sep-21',null,93);

call insert_into_traininfo(2020,'11-Sep-21',23,null);

call insert_into_traininfo(2020,'11-Sep-21',23,1999);



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







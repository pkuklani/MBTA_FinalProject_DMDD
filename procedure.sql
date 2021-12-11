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
begin
select count(*) into trainid_count from mbta_traininfo where trainid=train_id;
select count(*) into routeid_count from mbta_routeinfo where routeid=route_id;
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
elsif(not regexp_like(train_time,'^.*:*.:.*$')) then
raise invalid_timeformat;
else
select scheduleid into scheduleid_fetch from mbta_schedule where scheduleid in (select max(scheduleid) from mbta_schedule);
scheduleid_fetch:=+1;
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
end;
/


call insert_schedule(2,3,'12:34:34');

-- Null values
call insert_schedule(3,3,'12:53:34');

SELECT traintime
FROM mbta_schedule
WHERE REGEXP_LIKE (traintime, '^.*:*.:.*$');
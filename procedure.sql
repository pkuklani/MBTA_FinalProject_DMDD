/* Procedure to insert value in mbta train current status
*/


Create or replace Procedure insert_into_mbta_traincurrentstatus(
TRAINCURRENTSTATUSID  mbta_traincurrentstatus.TRAINCURRENTSTATUSID%type,
latitude mbta_traincurrentstatus.latitude%type,
longitude mbta_traincurrentstatus.longitude%type,
trainid mbta_traincurrentstatus.trainid%type)
as
null_exception_latitude exception;
null_exception_longitude exception;
null_exception_trainid exception;
begin
if(trainid is null) then
raise null_exception_trainid;
elsif(latitude is null) then
raise null_exception_latitude;
elsif(longitude is null) then
raise null_exception_longitude;
else
insert into mbta_traincurrentstatus values(seq_mbta_traincurrentstatus.nextval,latitude,longitude,trainid);
end if;
/*   Exceptions    */

Exception 
        when null_exception_trainid 
        then
        raise_application_error(-20009,'Train ID cannot be null');
        when null_exception_latitude
        then
        raise_application_error(-20009,'Latitude cannot be null');
        when null_exception_longitude
        then
        raise_application_error(-20009,'Longitude cannot be null'); 
end; 
/


call insert_into_mbta_traincurrentstatus(null,'23.34',null,23);

select * from mbta_traincurrentstatus;
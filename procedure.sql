/* Procedure to insert value in mbta train current status
null_excep exception,

*/


Create or replace Procedure insert_into_mbta_traincurrentstatus(
trainid mbta_traincurrentstatus.trainid%type,
latitute mbta_traincurrentstatus.latitude%type,
longitude mbta_traincurrentstatus.longitude%type
)
as
v_latitude mbta_traincurrentstatus.latitude%Type;
v_longitude mbta_traincurrentstatus.longitude%Type;
begin
insert into mbta_traincurrentstatus values(seq_mbta_traincurrentstatus.nextval,v_latitude,v_longitude);
end; 
/



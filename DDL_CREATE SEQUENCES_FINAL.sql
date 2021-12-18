begin 
execute immediate 'DROP SEQUENCE seq_mbta_traincurrentstatus'; 
exception when others then null; 
end;
/

begin 
execute immediate 'DROP SEQUENCE seq_mbta_station'; 
exception when others then null; 
end;
/

Create Sequence seq_mbta_traincurrentstatus start with 1 increment by 1;
Create Sequence seq_mbta_station start with 1 increment by 1;


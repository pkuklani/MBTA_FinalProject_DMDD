create or replace trigger delete_employee
before delete
on mbta_employee
for each row 
declare 
begin
delete from mbta_emplogin where employeeid=:old.employeeid;
end;
/

select * from mbta_employee where employeeid=176;

select * from mbta_emplogin where employeeid=176;

delete from mbta_employee where employeeid=176;


create or replace trigger delete_passenger
after delete 
on mbta_passenger 
for each row
declare
begin 
delete from mbta_login where passengerid=:old.passengerid;
delete from mbta_charlie where passengerid=:old.passengerid;
end;

select * from mbta_passenger where passengerid=1001;

select * from mbta_login where passengerid=1001;

select * from mbta_charlie where passengerid=1001;

delete from mbta_passenger where passengerid=1001;

commit;
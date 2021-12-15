create or replace function check_pass_id(pid in mbta_passenger.passengerid%type)
return int
is 
check_pass int;
begin
select count(1) into check_pass from mbta_passenger where passengerid=pid;
return check_pass;
end check_pass_id;
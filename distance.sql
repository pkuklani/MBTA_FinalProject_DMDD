create or replace function  get_distance(Lat1 number(10,8), Long1 binary_float, Lat2 binary_float, Long2 binary_float)
return binary_float 
is
d binary_float;
lat_1 binary_float;
long_1 binary_float;
lat_2 binary_float;
long_2 binary_float;
begin
-- Convert to radians
lat_1 := Lat1 / 57.2958;
long_1 := Long1 / 57.2958;
lat_2 :=  Lat2 / 57.2958;
long_2 := Long2 / 57.2958;
-- Calc distance
d := (Sin(lat_1) * Sin(long_1)) + (Cos(lat_2) * Cos(lat_2) * Cos(long_2 - long_1));
if d <> 0 then
d := 3958.75 * Atan(Sqrt(1 - power(d, 2)) / d);
end if;
return d;
end;
/
select get_distance(13.077085f,80.262675f,13.065701f,80.258916f) as distance from dual;


SELECT
    10.2d,
    32.7f
FROM
    dual;
    
    
    select get_distance(13.077085f,80.262675f,13.065701f,80.258916f) as distance from dual;

set serveroutput on;
declare 
lat_1 number(10,8);
lat_2 number(10,8);
long_1 number(10,8);
long_2 number(10,8);
Lat1 number(10,8):=13.077085;
Long1 number(10,8):=80.262675;
Lat2 number(10,8):=13.065701;
Long2 number(10,8):=80.258916;
d number(20,18);
begin
-- Convert to radians
lat_1 := Lat1 / 57.2958;
long_1 := Long1 / 57.2958;
lat_2 :=  Lat2 / 57.2958;
long_2 := Long2 / 57.2958;
-- Calc distance
d := (Sin(lat_1) * Sin(long_1)) + (Cos(lat_2) * Cos(lat_2) * Cos(long_2 - long_1));
dbms_output.put_line(d);
end;


insert into mbta_login values (23222,3434,'check','sda');

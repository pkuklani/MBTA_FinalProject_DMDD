create or replace function  get_distance(Lat1 float, Long1 float, Lat2 float, Long2 float)
return float 
is
d float;
lat_1 mbta_station.latitude%type;
long_1 mbta_station.longitude%type;
lat_2 mbta_station.latitude%type;
long_2 mbta_station.longitude%type;
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
select get_distance(13.077085,80.262675,13.065701,80.258916) from dual;
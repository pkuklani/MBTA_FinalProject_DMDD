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

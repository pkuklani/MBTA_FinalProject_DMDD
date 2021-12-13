----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------
--Description: View that returns Employee Profile
--Author: Priyanka Kuklani  
--SAMPLE USAGE:
--  SELECT * FROM MBTA_EMPLOYEEPROFILE WHERE EMPLOYEEID = 182;
----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE VIEW MBTA_EMPLOYEEPROFILE 
AS 
SELECT ME.EMPLOYEEID, 
        ME.NAME, 
        MDT.DEPTNAME, 
        MD.ROLE, 
        ME.AGE, 
        ME.ADDRESS, 
        ME.CITY, 
        ME.STATE, 
        ME.ZIPCODE, 
        ME.DOJ AS DATEOFJOINING,
        FLOOR(MONTHS_BETWEEN(SYSDATE, ME.DOJ)) AS NOOFMONTHSINSERVICE,
        MT.TRAINSERIALNO 
FROM MBTA_EMPLOYEE ME
JOIN MBTA_DEPT MD
    ON ME.DEPTID = MD.DEPTID
JOIN MBTA_DEPTTYPE MDT
    ON MD.DEPTTYPEID = MDT.DEPTTYPEID
LEFT OUTER JOIN MBTA_TRAININFO MT
    ON MT.TRAINID = ME.TRAINID;
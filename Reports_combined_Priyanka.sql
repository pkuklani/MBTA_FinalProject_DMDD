--REPORT TO FETCH EMPLOYEE DISTRIBUTION BY DEPARTMENTS
SELECT mdt.deptname, count(me.employeeid) AS NoOfEmployees FROM MBTA_EMPLOYEE ME
JOIN mbta_dept MD
ON ME.DEPTID = md.deptid
JOIN mbta_depttype MDT
ON mdt.depttypeid = md.depttypeid
GROUP BY mdt.deptname;

--REPORT TO FETCH NUMBER OF PASSENGERS BENEFITED FROM MBTA
SELECT COUNT(mp.passengerid) FROM mbta_passenger MP
JOIN mbta_transaction MT
ON mp.passengerid = mt.passengerid;

--REPORT TO GET AGE DISTRIBUTION OF PASSENGERS USING MBTA
SELECT B.AgeGroup, COUNT(B.PassengerId) AS NoOfPassengers FROM (SELECT A.PassengerId, 
    CASE 
        WHEN A.Age < 15 THEN '0 to 14 yrs'
        WHEN A.Age BETWEEN 15 AND 45 THEN '15 to 45 yrs'
        WHEN A.Age BETWEEN 46 AND 60 THEN '46 to 60 yrs'
        WHEN A.Age > 60 THEN '61 yrs and above'
    END AS AgeGroup
FROM 
(SELECT distinct mp.passengerid, mp.passengerfname, mp.passengerlname, trunc(months_between(sysdate,MP.dob) / 12) AS Age FROM mbta_passenger MP
JOIN mbta_transaction MT
ON mp.passengerid = mt.passengerid) A ) B
GROUP BY B.AgeGroup;

--TOTAL EARNINGS BY MBTA
SELECT SUM(amount) AS TOTALEARNINGSTILLDATE FROM MBTA_TRANSACTION;

--AGEING TRAINS NEEDING TO BE RETIRED (> 15 YRS)
SELECT COUNT(1) AS NO_OF_AGED_TRAINS FROM MBTA_TRAININFO WHERE yearofmanufacturing < EXTRACT(YEAR FROM sysdate) - 15;
SELECT * FROM MBTA_TRAININFO WHERE yearofmanufacturing < EXTRACT(YEAR FROM sysdate) - 15;

--TRAINS NOT SERVICED IN THE LAST 6 MONTHS
SELECT COUNT(1) AS NO_OF_TRAINS_REQUIRING_SERIVICE FROM MBTA_TRAININFO WHERE trunc(months_between(sysdate,lastservicedate)) > 6;
SELECT * FROM MBTA_TRAININFO WHERE trunc(months_between(sysdate,lastservicedate)) > 6;
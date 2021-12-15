call mbta_createdepttype ('Servicing');
call mbta_createdepttype ('Train Operators');
call mbta_createdepttype ('Maintenance');
call mbta_createdepttype ('Administrator');
call mbta_createdepttype ('Human Resources');
call mbta_createdepttype ('Finance');
call mbta_createdepttype ('Cleaning');

call mbta_createdept('Servicing', 'Red Line Servicemen');
call mbta_createdept('Servicing', 'Green Line Servicemen');
call mbta_createdept('Servicing', 'Blue Line Servicemen');
call mbta_createdept('Servicing','Orange Line Servicemen');

call mbta_createdept('Train Operators','Red Line Train Operators');
call mbta_createdept('Train Operators','Green Line Train Operators');
call mbta_createdept('Train Operators','Blue Line Train Operators');
call mbta_createdept('Train Operators','Orange Line Train Operators');

call mbta_createdept('Maintenance','Red Line Maintenance');
call mbta_createdept('Maintenance','Green Line Maintenance');
call mbta_createdept('Maintenance','Blue Line Maintenance');
call mbta_createdept('Maintenance','Orange Line Maintenance');

call mbta_createdept('Administrator','Red Line Admin');
call mbta_createdept('Administrator','Green Line Admin');
call mbta_createdept('Administrator','Blue Line Admin');
call mbta_createdept('Administrator','Orange Line Admin');

call mbta_createdept('Human Resources','Red Line HR');
call mbta_createdept('Human Resources','Green Line HR');
call mbta_createdept('Human Resources','Blue Line HR');
call mbta_createdept('Human Resources','Orange Line HR');

call mbta_createdept('Finance','Red Line Finance');
call mbta_createdept('Finance','Green Line Finance');
call mbta_createdept('Finance','Blue Line Finance');
call mbta_createdept('Finance','Orange Line Finance');

call mbta_createdept('Cleaning','Red Line Cleaning');
call mbta_createdept('Cleaning','Green Line Cleaning');
call mbta_createdept('Cleaning','Blue Line Cleaning');
call mbta_createdept('Cleaning','Orange Line Cleaning');


--SAMPLE EXECUTION SCRIPTS
call mbta_createdepttype ('Servicing');
call mbta_createdepttype ('Guards');

--SAMPLE EXECUTION SCRIPTS
call mbta_createdept('Servicing', 'Red Line Servicemen');
call mbta_createdept('Guards', 'Red Line Guards');

--EXAMPLE TO CREATE EMPLOYEE
DECLARE 
    GeneratedEmployeeID NUMBER :=0;
    EmployeeExists NUMBER :=0;
BEGIN
    mbta_CreateOrUpdateEmployeeLogin (0, 'pkuklani', 'Pa$$w0rd.1', GeneratedEmployeeID, EmployeeExists);
    IF GeneratedEmployeeID > 0
    THEN
    mbta_createorupdateemployeeprofile (GeneratedEmployeeID, 'Priyanka Kuklani', 27, '2765 Boxer Way', 'San Fransisco', 'CA', 33203, TO_DATE('2019-01-01','YYYY-MM-DD'), 'Red Line Train Operators', GeneratedEmployeeID, EmployeeExists);
    END IF;
    DBMS_OUTPUT.PUT_LINE(GeneratedEmployeeID);
    DBMS_OUTPUT.PUT_LINE(EmployeeExists);
END;

--EXAMPLE TO SHOW VALIDATION WHEN USER NAME IS ALREADY TAKEN
DECLARE 
    GeneratedEmployeeID NUMBER :=0;
    EmployeeExists NUMBER :=0;
BEGIN
    mbta_CreateOrUpdateEmployeeLogin (0, 'pkuklani', 'Pa$$w0rd.1', GeneratedEmployeeID, EmployeeExists);
    DBMS_OUTPUT.PUT_LINE(GeneratedEmployeeID);
    DBMS_OUTPUT.PUT_LINE(EmployeeExists);
END;

--EXAMPLE TO UPDATE EMPLOYEE ADDRESS
DECLARE 
    GeneratedEmployeeID NUMBER :=204;
    EmployeeExists NUMBER :=0;
BEGIN
    mbta_createorupdateemployeeprofile (GeneratedEmployeeID, 'Priyanka Kuklani', NULL, '2765 Vendor Way', 'San Fransisco', 'CA', 33203, NULL, 'Red Line Train Operators', GeneratedEmployeeID, EmployeeExists);
END;
--select * from mbta_employee where employeeid = 204;
--

--EXAMPLE TO UPDATE PASSWORD
DECLARE 
    GeneratedEmployeeID NUMBER :=0;
    EmployeeExists NUMBER :=0;
BEGIN
    mbta_CreateOrUpdateEmployeeLogin (204, 'pkuklani', 'Pa$$w0rd.1', GeneratedEmployeeID, EmployeeExists);
    DBMS_OUTPUT.PUT_LINE(GeneratedEmployeeID);
    DBMS_OUTPUT.PUT_LINE(EmployeeExists);
END;
--select * from mbta_emplogin where employeeid = 204;
--

--EXAMPLE TO CREATE A NEW PASSENGER
     DECLARE 
          GenPassId  NUMBER :=0;
          LoginExists NUMBER :=0;
      BEGIN
          mbta_CreateOrUpdatePassLogin (0, 'pkuklani', 'Pa$$w0rd.99', GenPassId, LoginExists);
          IF GenPassId > 0
          THEN
          mbta_CreateOrUpdatePassProfile(GenPassId, 'Priyanka', 'Kuklani', TO_DATE('1994-11-18', 'YYYY-MM-DD'), '2765 Vendor Way', 'San Fransisco', 'CA', 33203, GenPassId, LoginExists);
          END IF;
          DBMS_OUTPUT.PUT_LINE(genpassid);
          DBMS_OUTPUT.PUT_LINE(loginexists);
      END;
      
--EXAMPLE TO UPDATE EXISTING PASSENGER DATA (ADDRESS)
     DECLARE 
          GenPassId  NUMBER :=0;
          LoginExists NUMBER :=0;
      BEGIN
          mbta_CreateOrUpdatePassProfile(1999, 'Priyanka', 'Kuklani', TO_DATE('1994-11-18', 'YYYY-MM-DD'), '2765 Boxer Way', 'San Fransisco', 'CA', 33203, GenPassId, LoginExists);
          DBMS_OUTPUT.PUT_LINE(genpassid);
          DBMS_OUTPUT.PUT_LINE(loginexists);
      END;
      
--EXAMPLE TO UPDATE PASSENGER PASSWORD
     DECLARE 
          GenPassId  NUMBER :=0;
          LoginExists NUMBER :=0;
      BEGIN
          mbta_CreateOrUpdatePassLogin (1999, 'pkuklani', 'Pa$$w0rd.1', GenPassId, LoginExists);
          DBMS_OUTPUT.PUT_LINE(genpassid);
          DBMS_OUTPUT.PUT_LINE(loginexists);
      END;   
      
--DUMMY EMPLOYEE AND EMPLOYEELOGIN DATA CREATED USING SIMPLE INSERT SCRIPTS     
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (1,24,11,'Silas Conway',93,'7177 Aliquam Road','Cleveland','Ohio','99999',TO_DATE('2019-06-02','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (2,5,19,'Tanner Fitzgerald',37,'692-5451 Ornare, St.','Jonesboro','Arkansas','76623',TO_DATE('2019-11-20','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (3,23,26,'Chanda Summers',37,'Ap #190-3193 Arcu. Av.','Los Angeles','California','83855',TO_DATE('2018-02-14','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (4,16,18,'Quamar Maynard',46,'P.O. Box 129, 2498 Ante, Rd.','Pocatello','Idaho','32574',TO_DATE('2018-06-05','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (5,13,34,'Faith Norman',51,'215-1828 Laoreet, Avenue','Bellevue','Washington','90834',TO_DATE('2020-08-14','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (6,11,8,'Basia Rios',15,'Ap #324-8243 Varius. Ave','Rockville','Maryland','43757',TO_DATE('2019-05-24','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (7,27,50,'Veronica Golden',49,'P.O. Box 798, 7662 Felis, Street','Gillette','Wyoming','35252',TO_DATE('2018-07-25','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (8,16,4,'Ferdinand Nolan',46,'Ap #911-572 Nulla Street','Burlington','Vermont','82215',TO_DATE('2019-12-16','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (9,24,17,'TaShya Stokes',81,'Ap #210-8113 Cras Street','Rockville','Maryland','91636',TO_DATE('2020-06-15','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (10,25,47,'Alec Wolfe',34,'875-429 Curae Rd.','Orlando','Florida','98668',TO_DATE('2020-05-09','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (11,16,29,'Dieter Cameron',67,'914-5407 Accumsan Street','Minneapolis','Minnesota','87838',TO_DATE('2020-12-02','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (12,25,39,'Perry Farmer',95,'7938 Mi Ave','Eugene','Oregon','71883',TO_DATE('2018-08-24','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (13,14,19,'Jason Mcdonald',54,'640-9442 Egestas. St.','Phoenix','Arizona','24018',TO_DATE('2018-12-17','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (14,12,49,'Gray Frye',94,'764-6083 Lacus. Rd.','Madison','Wisconsin','28765',TO_DATE('2020-10-09','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (15,5,4,'Tobias Gibbs',37,'Ap #288-2832 Faucibus St.','Lowell','Massachusetts','42814',TO_DATE('2020-05-01','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (16,18,17,'Brock Powers',57,'556-599 Varius Ave','Montpelier','Vermont','61530',TO_DATE('2019-11-10','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (17,17,40,'Charde Evans',69,'560-2791 In St.','New Haven','Connecticut','68522',TO_DATE('2019-04-23','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (18,10,15,'Melvin Vega',30,'Ap #215-7525 Ac Road','Reno','Nevada','36458',TO_DATE('2019-02-16','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (19,25,5,'Amy Crosby',24,'Ap #639-2691 Dapibus Av.','Butte','Montana','84711',TO_DATE('2018-02-11','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (20,12,19,'Amena Barron',44,'661-9089 Ornare. Avenue','Fresno','California','41462',TO_DATE('2020-03-24','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (21,22,16,'Jordan Rasmussen',32,'Ap #600-6332 Nunc Street','Augusta','Georgia','24254',TO_DATE('2018-05-13','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (22,23,21,'Ishmael Griffith',59,'1722 Consectetuer Rd.','Columbia','Missouri','22159',TO_DATE('2019-09-19','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (23,17,10,'Adria Hall',74,'158-2041 Enim. Avenue','Grand Rapids','Michigan','95066',TO_DATE('2021-11-29','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (24,26,48,'Oren Johnston',51,'449-6654 Semper. Rd.','Overland Park','Kansas','73663',TO_DATE('2020-07-28','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (25,11,17,'Yoshi Perkins',38,'Ap #542-7981 Mauris. Ave','San Francisco','California','62765',TO_DATE('2019-12-02','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (26,19,25,'Sade Hunt',95,'298-2176 Luctus. Ave','Clarksville','Tennessee','75577',TO_DATE('2018-06-24','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (27,10,20,'Kennedy Knapp',83,'140-8005 Auctor Rd.','Gillette','Wyoming','98411',TO_DATE('2020-08-07','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (28,6,40,'McKenzie Copeland',77,'Ap #762-7953 Mauris Avenue','Nashville','Tennessee','76784',TO_DATE('2021-11-14','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (29,6,13,'Jasmine Prince',95,'Ap #796-9448 Posuere St.','Rockford','Illinois','22700',TO_DATE('2019-01-03','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (30,28,18,'Fay Pruitt',23,'Ap #800-5750 Semper Av.','Tulsa','Oklahoma','51503',TO_DATE('2020-03-09','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (31,6,18,'Ori Whitehead',54,'Ap #296-5887 Augue Road','Augusta','Georgia','28271',TO_DATE('2020-02-20','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (32,5,29,'Donovan Garner',56,'491-8176 Sit Av.','Bridgeport','Connecticut','96215',TO_DATE('2020-01-12','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (33,16,34,'Lance Flowers',91,'Ap #896-9269 A, St.','Tallahassee','Florida','93252',TO_DATE('2021-07-27','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (34,20,31,'Brendan Day',76,'4975 Tortor. St.','Bowling Green','Kentucky','38531',TO_DATE('2021-09-23','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (35,2,30,'Blythe Rios',67,'P.O. Box 139, 5093 Rutrum St.','Rochester','Minnesota','83224',TO_DATE('2021-04-06','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (36,10,28,'Rana Weiss',27,'Ap #249-107 Dui Road','Rockville','Maryland','35545',TO_DATE('2021-06-09','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (37,4,39,'Chase Underwood',65,'503-4743 Felis St.','Stamford','Connecticut','56736',TO_DATE('2020-04-01','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (38,21,46,'Morgan Vance',60,'5107 Mauris. St.','Jonesboro','Arkansas','39932',TO_DATE('2021-07-29','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (39,2,33,'Rafael Guthrie',91,'122-6981 Nullam Road','Vancouver','Washington','43426',TO_DATE('2021-02-27','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (40,23,45,'Rana Mayer',98,'Ap #556-7430 Eget, St.','Fresno','California','41187',TO_DATE('2019-05-09','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (41,27,11,'Guinevere Sweet',94,'1446 Nunc Rd.','Detroit','Michigan','65735',TO_DATE('2019-12-11','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (42,6,39,'Demetrius Gardner',91,'6449 Vel Av.','Gillette','Wyoming','33538',TO_DATE('2019-03-09','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (43,28,10,'Kieran Bender',73,'Ap #131-158 Magna St.','Clarksville','Tennessee','55407',TO_DATE('2021-06-05','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (44,2,6,'Laurel Newton',70,'6893 Dui Avenue','Hartford','Connecticut','54006',TO_DATE('2020-01-07','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (45,13,6,'Fletcher Meadows',58,'194-8741 Senectus Av.','Bozeman','Montana','87963',TO_DATE('2019-01-23','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (46,27,35,'Melissa Pacheco',86,'P.O. Box 686, 3581 Id Avenue','Gresham','Oregon','16245',TO_DATE('2018-09-16','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (47,1,38,'Adara Sanders',22,'Ap #438-7230 Sed Ave','Colorado Springs','Colorado','92921',TO_DATE('2018-10-16','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (48,7,24,'Austin Chambers',23,'Ap #197-8534 Elit Avenue','Racine','Wisconsin','55347',TO_DATE('2021-02-15','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (49,9,43,'Amena Weaver',32,'2638 Elementum St.','Knoxville','Tennessee','41170',TO_DATE('2020-09-25','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (50,4,50,'Charity Delacruz',54,'3715 Neque St.','Fairbanks','Alaska','64542',TO_DATE('2020-01-26','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (51,20,15,'Bertha Alford',28,'P.O. Box 797, 3388 Enim. Av.','Columbia','Missouri','82347',TO_DATE('2021-05-12','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (52,7,41,'Geoffrey Lyons',97,'Ap #299-9026 Taciti Road','Jacksonville','Florida','42575',TO_DATE('2018-01-27','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (53,6,41,'Ahmed Bean',51,'7018 Metus. Street','Bear','Delaware','33914',TO_DATE('2018-06-18','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (54,2,24,'Wylie Stein',31,'Ap #918-8010 Tincidunt. Ave','Tallahassee','Florida','45155',TO_DATE('2021-04-25','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (55,24,40,'Madeson Kidd',70,'5546 Diam. Av.','Bear','Delaware','65710',TO_DATE('2020-02-09','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (56,11,31,'Echo Terrell',79,'P.O. Box 734, 697 Eget St.','Honolulu','Hawaii','17896',TO_DATE('2021-05-22','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (57,7,35,'Axel Finch',33,'3268 Massa Avenue','Minneapolis','Minnesota','17561',TO_DATE('2019-04-03','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (58,16,2,'Thaddeus Dickerson',25,'P.O. Box 476, 4767 Ac Rd.','Wyoming','Wyoming','99559',TO_DATE('2018-03-06','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (59,24,35,'Noah Cotton',43,'Ap #423-9712 Non St.','Phoenix','Arizona','24683',TO_DATE('2021-07-24','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (60,1,24,'Karyn Harrell',37,'P.O. Box 923, 2785 Maecenas Av.','Hartford','Connecticut','84937',TO_DATE('2020-07-13','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (61,3,16,'Carol Sears',92,'3453 Augue Street','Essex','Vermont','67328',TO_DATE('2021-07-19','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (62,12,15,'Valentine Lane',83,'864-4466 Enim St.','Tampa','Florida','99636',TO_DATE('2021-05-27','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (63,26,19,'Gemma Carrillo',48,'Ap #895-7716 Non St.','Great Falls','Montana','29853',TO_DATE('2019-03-14','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (64,14,28,'Brianna Sanchez',14,'862-2132 Non, Street','Fayetteville','Arkansas','55389',TO_DATE('2018-08-30','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (65,6,43,'Ayanna Hodge',88,'Ap #643-859 Quisque St.','Pittsburgh','Pennsylvania','79537',TO_DATE('2019-06-29','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (66,26,12,'Keegan Maynard',99,'449-8967 Non, Rd.','Columbus','Ohio','62485',TO_DATE('2018-07-10','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (67,2,48,'Alisa Todd',17,'Ap #760-2308 Morbi Ave','Lexington','Kentucky','21662',TO_DATE('2020-10-24','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (68,27,40,'Serena Emerson',59,'Ap #730-8667 Feugiat Avenue','Kenosha','Wisconsin','47108',TO_DATE('2021-09-02','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (69,9,5,'Jorden Mcleod',46,'338-734 Sed Street','Wilmington','Delaware','56788',TO_DATE('2019-10-25','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (70,7,7,'Bruno Martinez',53,'345-5930 Odio. Rd.','Fort Worth','Texas','45811',TO_DATE('2021-05-23','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (71,3,20,'Hayden Harper',69,'P.O. Box 656, 1140 Dictum Avenue','Overland Park','Kansas','56624',TO_DATE('2018-11-10','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (72,25,45,'Ori Winters',32,'115-2716 Aliquet, Road','Warren','Michigan','64025',TO_DATE('2018-08-31','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (73,2,43,'Steven Rosa',99,'2244 Eu, Street','Glendale','Arizona','96388',TO_DATE('2018-01-27','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (74,24,34,'Keefe Parrish',60,'181-2287 Magna. Rd.','Bear','Delaware','94749',TO_DATE('2018-12-11','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (75,17,10,'Claire O''connor',65,'Ap #723-7149 Massa Ave','Bellevue','Washington','99647',TO_DATE('2021-05-07','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (76,12,32,'Brianna Padilla',99,'P.O. Box 367, 6540 Pede Av.','Bowling Green','Kentucky','34355',TO_DATE('2021-03-11','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (77,12,47,'Fritz Mendez',48,'381-1716 Id, Rd.','Hillsboro','Oregon','99758',TO_DATE('2019-08-09','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (78,23,25,'Emmanuel Garza',61,'327-1262 Blandit Ave','Cambridge','Massachusetts','25222',TO_DATE('2019-11-03','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (79,3,20,'Kessie Goodman',25,'Ap #761-2898 Donec St.','Sacramento','California','45303',TO_DATE('2021-01-31','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (80,18,7,'Jeremy Elliott',53,'1704 Feugiat Rd.','Rockville','Maryland','74217',TO_DATE('2020-02-13','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (81,18,32,'Ray Farrell',52,'Ap #649-3956 Vitae, Street','Great Falls','Montana','65466',TO_DATE('2021-10-04','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (82,5,28,'Roanna Webb',62,'Ap #463-8837 Et, Rd.','Davenport','Iowa','26867',TO_DATE('2019-09-15','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (83,16,49,'Lucius Bridges',50,'5383 Sem. Road','Richmond','Virginia','58475',TO_DATE('2020-06-10','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (84,23,20,'Reece Sanford',97,'648-4432 Mollis Road','Colchester','Vermont','62651',TO_DATE('2021-01-25','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (85,14,45,'Illiana Rowland',93,'955-5194 Urna Avenue','Hartford','Connecticut','23223',TO_DATE('2019-03-20','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (86,21,31,'Otto Cooke',84,'Ap #428-5309 Arcu St.','Springfield','Illinois','23426',TO_DATE('2020-04-15','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (87,21,34,'Hall Hardy',37,'P.O. Box 310, 3777 Turpis Ave','Hillsboro','Oregon','23264',TO_DATE('2018-08-14','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (88,3,12,'Catherine Mack',100,'Ap #700-247 Sodales Av.','Dover','Delaware','69711',TO_DATE('2021-03-24','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (89,4,49,'John Harrell',33,'937-7260 Suspendisse St.','Springfield','Illinois','78778',TO_DATE('2019-07-03','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (90,18,25,'Tarik Cox',57,'Ap #182-2777 Natoque St.','Meridian','Idaho','48489',TO_DATE('2020-08-03','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (91,2,30,'Ethan Wooten',73,'727-3455 Duis Rd.','Casper','Wyoming','53366',TO_DATE('2019-03-30','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (92,13,8,'Quamar Mcmillan',65,'P.O. Box 341, 6086 Parturient St.','Jacksonville','Florida','66848',TO_DATE('2021-02-02','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (93,9,8,'Gail Vaughn',58,'612-7821 Scelerisque Rd.','Bear','Delaware','22777',TO_DATE('2020-04-16','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (94,27,3,'Alexandra Parsons',10,'P.O. Box 320, 3626 Morbi St.','Fort Worth','Texas','73345',TO_DATE('2021-09-27','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (95,28,15,'Aileen Mckee',28,'P.O. Box 638, 6503 Eget Av.','Juneau','Alaska','22257',TO_DATE('2019-05-11','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (96,16,11,'Gannon Haney',99,'Ap #696-3370 Quis, Street','Pocatello','Idaho','58227',TO_DATE('2019-11-05','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (97,8,37,'Damian Mcdonald',19,'2104 Convallis, Rd.','Sioux City','Iowa','24426',TO_DATE('2020-05-30','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (98,18,18,'Abra Mendoza',49,'4240 Sapien Ave','Hattiesburg','Mississippi','44235',TO_DATE('2020-07-26','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (99,10,10,'Samantha Hawkins',86,'723-6640 Et Road','Carson City','Nevada','76836',TO_DATE('2020-12-03','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (100,3,50,'Kelsie Potts',30,'Ap #206-3368 Elit Road','Aurora','Illinois','36913',TO_DATE('2019-03-11','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (101,15,43,'Lillith Williams',88,'Ap #163-8381 Ac St.','Des Moines','Iowa','61112',TO_DATE('2021-04-19','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (102,27,46,'Colt Blevins',69,'P.O. Box 974, 9611 Risus, Avenue','Georgia','Georgia','70656',TO_DATE('2021-11-19','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (103,19,25,'Sacha Bradley',30,'2120 Posuere Avenue','Philadelphia','Pennsylvania','39562',TO_DATE('2020-10-09','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (104,20,41,'Rebekah Lawrence',59,'570-2070 Sit Av.','Las Vegas','Nevada','67874',TO_DATE('2021-11-03','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (105,13,17,'Leila Mcconnell',65,'Ap #657-6230 Interdum. Ave','Anchorage','Alaska','91165',TO_DATE('2020-09-22','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (106,4,3,'Jessamine White',68,'Ap #106-1768 Dui. Av.','Dover','Delaware','98833',TO_DATE('2018-02-15','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (107,24,11,'Ebony Burke',98,'P.O. Box 268, 6451 Non Road','Springfield','Missouri','51124',TO_DATE('2018-07-18','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (108,23,15,'Blake Henderson',71,'Ap #244-5156 Proin Avenue','Columbia','Missouri','33072',TO_DATE('2021-11-04','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (109,6,38,'Lisandra Winters',17,'6619 Malesuada. Ave','Davenport','Iowa','84588',TO_DATE('2019-04-18','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (110,17,40,'Sybil Kemp',51,'9668 Metus St.','Bellevue','Washington','52485',TO_DATE('2018-01-18','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (111,13,40,'Suki Richard',76,'Ap #952-185 Vitae Rd.','Nashville','Tennessee','17578',TO_DATE('2020-07-09','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (112,21,16,'Gannon Malone',10,'513-7763 Odio. Ave','Boston','Massachusetts','44765',TO_DATE('2021-05-28','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (113,23,50,'Imani Drake',22,'P.O. Box 594, 9110 Aliquam St.','Boise','Idaho','35775',TO_DATE('2019-02-23','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (114,1,7,'Jolene Blair',19,'453-1987 A Road','Las Vegas','Nevada','40837',TO_DATE('2018-02-06','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (115,28,4,'Lev Goff',13,'Ap #968-2602 Auctor St.','Lansing','Michigan','36750',TO_DATE('2020-06-01','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (116,15,5,'Brandon Clark',55,'9957 Mauris Ave','Hattiesburg','Mississippi','23978',TO_DATE('2021-02-04','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (117,8,5,'Tasha Craig',37,'P.O. Box 898, 5857 Cras Avenue','Dallas','Texas','92756',TO_DATE('2020-12-20','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (118,12,29,'Bree Durham',14,'Ap #301-8563 Augue Avenue','Sterling Heights','Michigan','77752',TO_DATE('2018-01-27','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (119,13,19,'Brenna Padilla',85,'466-4245 Iaculis Rd.','Stamford','Connecticut','43988',TO_DATE('2021-02-12','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (120,3,32,'Jenette Bradley',27,'Ap #631-6374 Velit Avenue','Hartford','Connecticut','57390',TO_DATE('2019-04-02','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (121,7,12,'Ryder Hartman',47,'146-8696 Ultrices Avenue','Saint Louis','Missouri','88245',TO_DATE('2021-01-16','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (122,12,44,'Barry Duncan',49,'Ap #890-9920 Tincidunt Street','Glendale','Arizona','79456',TO_DATE('2018-08-28','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (123,18,16,'Guinevere Herring',29,'Ap #621-6086 Est St.','Bowling Green','Kentucky','87725',TO_DATE('2020-02-15','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (124,15,49,'Macey Richard',60,'298-8035 Odio, St.','Topeka','Kansas','79167',TO_DATE('2020-06-15','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (125,8,17,'Asher Carson',81,'Ap #181-3328 Ante Ave','Dallas','Texas','16250',TO_DATE('2018-02-24','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (126,13,8,'Palmer Hendricks',69,'6674 Ante. Av.','Chattanooga','Tennessee','20991',TO_DATE('2020-05-06','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (127,8,16,'Tucker Wagner',21,'Ap #442-3682 Lobortis. Av.','Gary','Indiana','23429',TO_DATE('2021-03-03','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (128,13,27,'Yuli Sampson',86,'510-8260 Vehicula Street','Waterbury','Connecticut','25241',TO_DATE('2020-12-13','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (129,24,43,'Forrest Everett',99,'Ap #771-6262 Tempor St.','Portland','Maine','68987',TO_DATE('2021-03-20','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (130,19,12,'Skyler Williamson',19,'Ap #249-4686 Sem Rd.','Green Bay','Wisconsin','90257',TO_DATE('2020-12-10','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (131,27,48,'Bryar Cervantes',95,'P.O. Box 377, 3713 Nonummy Avenue','Houston','Texas','84197',TO_DATE('2018-07-15','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (132,25,16,'David Hall',31,'522-8327 Non, Road','Birmingham','Alabama','33385',TO_DATE('2020-05-20','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (133,17,43,'Nola Reilly',17,'Ap #348-2289 Velit. St.','Georgia','Georgia','79555',TO_DATE('2020-08-10','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (134,15,5,'Bethany Mcgee',98,'Ap #979-3651 Pellentesque. Ave','Hattiesburg','Mississippi','74767',TO_DATE('2018-01-24','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (135,12,21,'Daquan Scott',93,'Ap #610-7825 Malesuada Rd.','Frankfort','Kentucky','41726',TO_DATE('2021-03-22','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (136,4,14,'Martha Yates',33,'P.O. Box 521, 5238 Felis. Rd.','Clarksville','Tennessee','91897',TO_DATE('2018-12-02','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (137,15,2,'Halee Herring',13,'736-6741 Facilisis. Rd.','Boise','Idaho','74566',TO_DATE('2019-06-20','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (138,6,36,'Erasmus Rios',81,'Ap #166-2317 Sollicitudin Av.','Bozeman','Montana','32911',TO_DATE('2018-01-25','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (139,25,27,'Joy Dejesus',18,'8051 Fringilla, Street','Louisville','Kentucky','35115',TO_DATE('2021-03-27','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (140,28,23,'Tamekah Tyson',89,'Ap #457-9643 Nec Avenue','Springfield','Illinois','62822',TO_DATE('2018-08-18','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (141,1,40,'Stephen Mcknight',16,'Ap #425-7882 Mattis Street','Casper','Wyoming','18873',TO_DATE('2018-01-12','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (142,8,34,'Jane Shaw',23,'Ap #457-9159 Vitae, St.','Rutland','Vermont','52083',TO_DATE('2021-07-13','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (143,16,24,'Raya Faulkner',62,'402-3458 Nunc Road','Baltimore','Maryland','38928',TO_DATE('2019-12-08','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (144,3,15,'Blake Mcmahon',79,'561-2194 Placerat, Av.','Springfield','Massachusetts','70722',TO_DATE('2019-02-01','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (145,27,36,'Abigail Clay',69,'519-7114 Curabitur St.','San Antonio','Texas','76651',TO_DATE('2019-02-09','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (146,20,17,'Karyn Byers',31,'7075 Nunc Ave','Kansas City','Missouri','66342',TO_DATE('2020-05-05','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (147,16,47,'Cleo Wolf',49,'P.O. Box 511, 2488 Et Ave','Burlington','Vermont','34334',TO_DATE('2018-12-21','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (148,10,45,'Leandra Lowery',92,'334 Feugiat St.','Tucson','Arizona','93105',TO_DATE('2021-08-28','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (149,8,32,'Norman Vasquez',37,'944-7589 Id, Road','Lafayette','Louisiana','83384',TO_DATE('2020-02-14','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (150,11,46,'Jin Riggs',56,'191-4114 Aliquam Av.','Essex','Vermont','36758',TO_DATE('2018-12-15','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (151,20,48,'Keely Austin',73,'Ap #343-973 Vitae, Avenue','Las Vegas','Nevada','35445',TO_DATE('2019-03-13','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (152,8,32,'Jasmine Moran',71,'P.O. Box 644, 6395 Quis Av.','South Portland','Maine','16852',TO_DATE('2021-08-13','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (153,24,40,'Britanni Mcfarland',88,'P.O. Box 271, 2025 Inceptos Street','Augusta','Georgia','35182',TO_DATE('2018-06-23','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (154,23,31,'Driscoll Rodriquez',73,'Ap #180-2718 Morbi St.','Sioux City','Iowa','60157',TO_DATE('2020-03-12','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (155,4,9,'Scott Rich',54,'3445 Diam St.','San Diego','California','13825',TO_DATE('2021-08-12','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (156,15,19,'Kessie Estrada',20,'Ap #180-9691 Metus Rd.','Iowa City','Iowa','72886',TO_DATE('2018-03-20','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (157,11,33,'Sybil Randall',46,'7847 Ultrices Rd.','San Diego','California','43493',TO_DATE('2020-01-10','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (158,8,38,'Brian George',86,'Ap #968-210 Dui, Av.','Springfield','Massachusetts','72647',TO_DATE('2018-11-23','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (159,8,9,'Ruth Mcdowell',36,'P.O. Box 189, 7738 Gravida Rd.','Rock Springs','Wyoming','61386',TO_DATE('2020-07-25','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (160,13,46,'Zeph Mayer',32,'Ap #143-3465 Sit Rd.','Chesapeake','Virginia','53740',TO_DATE('2018-05-30','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (161,16,2,'Amelia Green',76,'P.O. Box 378, 3418 Nullam Road','Provo','Utah','86587',TO_DATE('2018-04-07','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (162,23,26,'Leigh Gardner',79,'Ap #315-7273 Felis Avenue','Springdale','Arkansas','65863',TO_DATE('2020-05-09','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (163,1,47,'Melinda Chase',44,'445-8432 At, Avenue','Lowell','Massachusetts','83537',TO_DATE('2021-10-24','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (164,9,15,'Devin Ballard',92,'6285 Morbi St.','Chattanooga','Tennessee','96533',TO_DATE('2020-09-14','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (165,22,10,'Allen Langley',71,'193-8221 In Ave','Worcester','Massachusetts','81143',TO_DATE('2021-01-12','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (166,18,42,'Nasim Gibbs',92,'Ap #877-5077 Parturient Avenue','Philadelphia','Pennsylvania','32791',TO_DATE('2018-04-15','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (167,23,43,'McKenzie English',11,'896-7513 Ac Ave','Tallahassee','Florida','44415',TO_DATE('2018-01-31','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (168,19,36,'Karen Jimenez',26,'P.O. Box 894, 7855 Vitae, St.','Oklahoma City','Oklahoma','85329',TO_DATE('2020-11-22','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (169,4,5,'Kuame Griffith',70,'Ap #764-7329 At, Avenue','New Orleans','Louisiana','63331',TO_DATE('2019-09-26','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (170,4,47,'Kylee Copeland',44,'580-7214 Non, Av.','Virginia Beach','Virginia','44933',TO_DATE('2021-05-19','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (171,14,15,'Avye Warner',85,'199 Eu St.','Orlando','Florida','53397',TO_DATE('2021-05-30','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (172,5,49,'Holmes Lara',40,'825-724 Nisl. St.','Kansas City','Missouri','35516',TO_DATE('2018-07-02','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (173,16,32,'Marah Horne',89,'P.O. Box 693, 5858 Mauris, Rd.','College','Alaska','86718',TO_DATE('2020-12-18','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (174,27,42,'Tanner Todd',88,'987-907 Nulla Ave','South Burlington','Vermont','58655',TO_DATE('2019-03-05','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (175,16,11,'Bradley Gutierrez',21,'328-1217 Nam Rd.','Kearney','Nebraska','54355',TO_DATE('2021-08-13','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (176,10,28,'Axel Page',74,'229-1233 Sit Ave','Meridian','Idaho','79018',TO_DATE('2019-04-29','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (177,19,20,'Ezra Grimes',28,'Ap #959-9751 Netus St.','Baton Rouge','Louisiana','91721',TO_DATE('2021-03-07','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (178,12,48,'Zeus Duke',96,'P.O. Box 910, 1108 Mollis. Road','San Jose','California','33202',TO_DATE('2018-09-17','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (179,14,12,'Karly Hart',39,'Ap #897-7010 Dignissim Street','Racine','Wisconsin','86352',TO_DATE('2019-08-16','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (180,22,38,'Emi Baird',16,'Ap #886-9845 Magna. Rd.','Orlando','Florida','32484',TO_DATE('2018-02-08','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (181,14,43,'Grant Reilly',47,'807-1489 Aptent Road','Lexington','Kentucky','86647',TO_DATE('2020-03-11','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (182,11,7,'Oleg Richard',94,'318-9475 Euismod Road','Kearney','Nebraska','75564',TO_DATE('2019-07-14','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (183,9,11,'Judah Cotton',85,'605-4139 Vivamus Rd.','Worcester','Massachusetts','77705',TO_DATE('2020-05-24','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (184,21,25,'Iola Ingram',21,'185-6037 Natoque Rd.','Lincoln','Nebraska','94762',TO_DATE('2020-05-06','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (185,5,11,'India Green',92,'Ap #488-1483 Ornare Avenue','Kenosha','Wisconsin','74906',TO_DATE('2018-11-17','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (186,9,30,'Elizabeth Weber',54,'Ap #648-333 Semper Rd.','Phoenix','Arizona','76652',TO_DATE('2021-10-13','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (187,8,26,'Macon Britt',60,'2416 Enim. Road','Sioux City','Iowa','29805',TO_DATE('2019-07-11','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (188,5,33,'Damian Torres',78,'778-9743 Metus. Street','Aurora','Colorado','86375',TO_DATE('2021-04-22','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (189,14,9,'Christine Sparks',18,'1544 Dui. Av.','Dallas','Texas','24572',TO_DATE('2019-07-02','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (190,16,19,'Clinton Maynard',47,'1176 Augue Street','Clarksville','Tennessee','87727',TO_DATE('2019-07-22','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (191,27,22,'Odessa West',78,'P.O. Box 284, 8580 Adipiscing Road','Erie','Pennsylvania','19333',TO_DATE('2019-01-17','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (192,2,18,'Elmo Payne',45,'4076 Ornare, Av.','Columbus','Ohio','25985',TO_DATE('2018-10-14','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (193,4,21,'Solomon Merritt',43,'P.O. Box 641, 200 Quam. Av.','Tampa','Florida','36315',TO_DATE('2021-05-24','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (194,9,32,'Autumn Hull',96,'Ap #660-3674 Quis St.','Grand Island','Nebraska','22352',TO_DATE('2021-01-10','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (195,21,4,'Noelle Salinas',92,'352-208 Elit Av.','Lansing','Michigan','89237',TO_DATE('2018-02-25','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (196,4,43,'Len Harrison',65,'Ap #884-4722 Aliquam, St.','Columbus','Ohio','72596',TO_DATE('2020-07-20','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (197,15,24,'Rhea Kerr',59,'379-6650 Donec Av.','Lansing','Michigan','69744',TO_DATE('2021-10-23','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (198,13,41,'Damon Bowen',18,'520-4736 Hendrerit Av.','Virginia Beach','Virginia','54697',TO_DATE('2018-05-05','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (199,12,7,'Amela Hamilton',14,'108-7693 Neque. Rd.','Pike Creek','Delaware','49353',TO_DATE('2020-09-28','YYYY-MM-DD'));
INSERT INTO mbta_employee (employeeid,deptid,trainid,name,age,address,city,state,zipcode,doj)
VALUES (200,15,44,'Cain Howard',31,'990-1125 Libero St.','Tampa','Florida','57775',TO_DATE('2021-05-14','YYYY-MM-DD'));





TRUNCATE table MBTA_CHARLIE;
TRUNCATE TABLE MBTA_PASSENGER;
TRUNCATE TABLE MBTA_PASSENGERFREQUENCY;
TRUNCATE TABLE MBTA_LOGIN;
TRUNCATE TABLE MBTA_SCHEDULE;
TRUNCATE TABLE MBTA_STATION;
TRUNCATE TABLE MBTA_ROUTEINFO;
TRUNCATE TABLE MBTA_TRAINCURRENTSTATUS;
TRUNCATE TABLE MBTA_TRAININFO;
TRUNCATE TABLE MBTA_TRANSACTION;
TRUNCATE TABLE MBTA_TYPES;
TRUNCATE TABLE MBTA_EMPLOYEE;
TRUNCATE TABLE MBTA_EMPLOGIN;
TRUNCATE TABLE MBTA_DEPT;
TRUNCATE TABLE MBTA_DEPTTYPE;
ALTER SEQUENCE seq_mbta_traincurrentstatus RESTART WITH 1;
ALTER SEQUENCE seq_mbta_station RESTART WITH 1;
----------------------------------------------------------------------------------------
-- INSERT SCRIPTS FOR MBTA_DEPTTYPE
----------------------------------------------------------------------------------------

INSERT INTO MBTA_DEPTTYPE VALUES (1, 'Servicing');
--call mbta_createdepttype ('Servicing');
call mbta_createdepttype ('Train Operators');
call mbta_createdepttype ('Maintenance');
call mbta_createdepttype ('Administrator');
call mbta_createdepttype ('Human Resources');
call mbta_createdepttype ('Finance');
call mbta_createdepttype ('Cleaning');

----------------------------------------------------------------------------------------
-- INSERT SCRIPTS FOR MBTA_DEPT
----------------------------------------------------------------------------------------

INSERT INTO MBTA_DEPT VALUES (1, 1, 'Red Line Servicemen');
--call mbta_createdept('Servicing', 'Red Line Servicemen');
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

----------------------------------------------------------------------------------------
--INSERT SCRIPTS FOR MBTA_EMPLOGIN
----------------------------------------------------------------------------------------

INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (1,1,'Dean','HEC58VBE6ZO');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (2,2,'Aphrodite','CVY60TVR0MB');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (3,3,'Rogan','CJC13XZL0SV');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (4,4,'Cora','TNJ21NMU0IC');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (5,5,'Nash','PSR46BNF6RH');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (6,6,'Scarlett','HTB81CEH3DX');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (7,7,'Danielle','UIN35LGO5EF');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (8,8,'Helen','RGA82UMP0KT');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (9,9,'Jaquelyn','ONI22MRF2HF');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (10,10,'Avram','NRC64WPN7QP');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (11,11,'Alexandra','YGV44XCV5OQ');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (12,12,'Isaac','FSA80EXB2LM');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (13,13,'Octavius','KEG17GRY7EW');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (14,14,'Blake','QNN65TSK4MN');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (15,15,'Brett','EHM77WJT7YK');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (16,16,'Riley','GQY08ZDY6XN');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (17,17,'Maris','LGX48BSH2VR');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (18,18,'Kennan','RFR58FZX7UJ');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (19,19,'Clio','CND33EUZ4ES');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (20,20,'Cruz','GOI57WGJ4HN');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (21,21,'Kristen','COM20KQP1HU');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (22,22,'Hanae','XGE88EBK5OI');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (23,23,'Norman','XZW98YUN4OW');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (24,24,'Quinn','UYH52TLB5OQ');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (25,25,'Delilah','MME71KOU7KH');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (26,26,'Jackson','POH62YFP3QI');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (27,27,'Lev','MJZ13IQE4RV');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (28,28,'Ursa','HFN54ZCE3LQ');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (29,29,'Leila','RLC36CHY3HH');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (30,30,'Iris','YMC31XMN7QL');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (31,31,'Nomlanga','GHG18OUY8IJ');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (32,32,'Yetta','KHK74UOS7BJ');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (33,33,'Martin','WGZ80QTR6ND');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (34,34,'Leilani','IQR36VWR4QI');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (35,35,'TaShya','ZUI84VGN8OL');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (36,36,'Kirsten','DSV83UEM4RM');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (37,37,'Lamar','UPH27PTO0KG');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (38,38,'Jacqueline','JCK95MEJ7VR');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (39,39,'Nash','ZDX36TJO8CU');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (40,40,'Kiayada','XSK94CDX9BR');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (41,41,'Branden','VOT48VJB2TG');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (42,42,'Jennifer','XSD64KOL3VA');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (43,43,'Illiana','VCQ63CXU0SI');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (44,44,'Skyler','KNI19OMI1YU');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (45,45,'Tad','SYQ13YSO9HM');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (46,46,'Aidan','YUV16KSK7OS');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (47,47,'Rylee','XCJ65DQL9II');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (48,48,'Patrick','MQX88SMT6OG');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (49,49,'Mara','NWA76JRE0RG');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (50,50,'Stacey','TML13OKJ2UL');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (51,51,'Lysandra','WUJ48TQO2FD');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (52,52,'Halee','PHI43FTQ2NX');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (53,53,'Vance','UYQ82TTQ5XB');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (54,54,'Kameko','JXC47KZR3EQ');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (55,55,'Hayley','UAJ98UNE2JC');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (56,56,'Marsden','VIF75IWK6YB');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (57,57,'Latifah','YHY57ITX8QN');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (58,58,'Kelly','POD18LOK3BC');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (59,59,'Gillian','JSA63KSB8LI');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (60,60,'Hoyt','YBB28UEE5TJ');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (61,61,'Isaac','SDS71BCU8IS');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (62,62,'Hayes','SOL48DLN4IB');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (63,63,'Charlotte','MQO15SBW5VK');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (64,64,'Salvador','XXE35GLG4EM');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (65,65,'Macey','VWI32QNJ7PF');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (66,66,'Tobias','ZNW13OYY4YR');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (67,67,'Arthur','YBW32OGM7BG');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (68,68,'Julian','OPV60LYM4DK');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (69,69,'Dane','YPW64PDS4UZ');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (70,70,'Hop','SGP12EJW2PO');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (71,71,'Drew','NEF15IZU4UN');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (72,72,'Risa','YIV17PUQ2JQ');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (73,73,'Francis','RSI68KOZ4AW');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (74,74,'Jordan','IBX48ZOI5HW');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (75,75,'Orlando','YQE98CRW5IG');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (76,76,'Quinn','VQN88GNI9LS');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (77,77,'Bianca','HJB74GRV8DB');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (78,78,'Brady','LKS71CLN9DK');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (79,79,'Raya','GMM67SUG2KO');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (80,80,'Lyle','EPK18OED1EK');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (81,81,'Janna','YJR52VJZ6MP');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (82,82,'Christopher','TAW80ZUH7VQ');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (83,83,'Jerry','DGD41RWE8XJ');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (84,84,'Colin','UNB04VOV0HP');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (85,85,'Alden','RXL11BTL2HU');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (86,86,'Kerry','QHZ24PYR6XS');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (87,87,'Marah','GKJ65WNX5PS');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (88,88,'Madonna','AMU79CQC6MO');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (89,89,'Hillary','SVA57IYM5UC');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (90,90,'Violet','JUK98UAZ4OD');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (91,91,'Kellie','ZDC97INY2VT');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (92,92,'Cameron','EFC59VRP5FO');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (93,93,'Jamal','JEJ89IIR2IO');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (94,94,'Lacy','NJU14IGQ7QK');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (95,95,'Declan','ROV82BRP0VO');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (96,96,'Chancellor','NAE69LGD5WF');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (97,97,'John','ICL56MTR5RV');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (98,98,'Mason','RMY73PHD6OE');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (99,99,'Mariam','OMS27VWD2OW');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (100,100,'Keaton','BEW11GFM0FL');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (101,101,'Kasper','FKP37IMR5RA');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (102,102,'Rebecca','ZPG99BCD1QQ');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (103,103,'Pascale','QSS11LXH2GG');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (104,104,'Whitney','KWC18LOE2LN');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (105,105,'Russell','APJ07JIH1QU');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (106,106,'Kellie','ZNH79RCH9LD');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (107,107,'Caesar','IPV71XYI9HS');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (108,108,'Brock','DZN45QQC5DJ');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (109,109,'Addison','IOF66OGX8VE');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (110,110,'Keaton','QAQ63STM1SB');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (111,111,'Armand','WWM58BKU8RC');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (112,112,'Paki','JCQ62DFO1OY');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (113,113,'Jameson','LVS78DLV5HV');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (114,114,'Mark','UHP46PGJ4GT');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (115,115,'Ignacia','LOV66RUN2ZL');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (116,116,'Chandler','SDB56GPX5KW');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (117,117,'Marsden','KEE49IGT1JL');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (118,118,'Nora','VVY19TXX6UG');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (119,119,'Nayda','DAU42GQP5DD');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (120,120,'Dana','CHP08QOK9AU');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (121,121,'Nora','RQK97EPE8FR');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (122,122,'Chase','QBD56NFC0JH');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (123,123,'Devin','XNB73HPM4LF');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (124,124,'Illiana','YSD10OCR5FE');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (125,125,'Sasha','LRJ04RAN1XI');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (126,126,'Kerry','ACI23MAP5SZ');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (127,127,'Angelica','VFM77DGM9SH');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (128,128,'Leonard','YTT26KRC3NV');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (129,129,'Ivor','AQV81YEF6GD');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (130,130,'Yasir','XVQ07ECK2CR');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (131,131,'Ila','LRS68IGY3DP');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (132,132,'Maggie','OQX13KGP1QP');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (133,133,'Mechelle','ZIL79BLX1JS');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (134,134,'Alice','YRV72URL4SL');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (135,135,'Josephine','TXT76QYK7IY');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (136,136,'Sage','FKR38PJO8AT');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (137,137,'Bruno','PEV22ZGX8XI');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (138,138,'Noel','GZL25XDI6AG');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (139,139,'Hollee','KLG88VXW6WW');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (140,140,'Thor','WOO51LLG8MN');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (141,141,'Tashya','IJO42RUJ1YV');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (142,142,'Eve','SLG74EEP8BY');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (143,143,'Kylie','UMH53QLX1GG');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (144,144,'Sean','PEO82IUJ3DV');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (145,145,'Magee','MHO22JPX7YT');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (146,146,'Bevis','AJY77DRB1LK');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (147,147,'Anthony','WXJ78MOR5DX');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (148,148,'Kirk','FLB45FNY3GO');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (149,149,'Malcolm','UKE41UZQ0CB');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (150,150,'Latifah','XID63ZKC6NS');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (151,151,'Jena','QDH36KCI2UI');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (152,152,'Darrel','UTR41TIH4GH');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (153,153,'Castor','QMO61XLR7SY');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (154,154,'Inez','VZE18RNQ1IX');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (155,155,'Calista','PZL33IPC0MM');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (156,156,'Clinton','VTJ43YFX7MT');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (157,157,'Odette','KBJ61UIG3JM');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (158,158,'Paul','RHX86XLY3YA');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (159,159,'Cailin','JQJ43QTX2CO');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (160,160,'Frances','SSI32KBI6JJ');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (161,161,'Aaron','NIG42DWI8KO');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (162,162,'Owen','SDO10LON3DH');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (163,163,'Yoshi','MQD40TYA9SC');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (164,164,'Keaton','JFH23PNL6TR');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (165,165,'Kelly','QOJ48DHQ5FI');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (166,166,'David','ZVP14SPK2CY');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (167,167,'Cadman','VQQ27KTM6NY');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (168,168,'Olivia','LKC84BPR6HK');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (169,169,'Dawn','BSL67QFR5QD');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (170,170,'Irene','QIM32QKO9MI');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (171,171,'Sydney','XKH31KTK0JS');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (172,172,'Acton','KMZ28FVJ6SN');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (173,173,'Carissa','MGU74XHU5ZO');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (174,174,'Ariel','EAK38IGI1JB');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (175,175,'Zachery','KRW32ZEL9OW');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (176,176,'Brenden','YFE92AKB8TH');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (177,177,'Ursa','VJD17VTP8RM');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (178,178,'Jelani','JCQ99TXU8VR');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (179,179,'Jael','VQQ66VIN8LN');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (180,180,'Sade','NPD79WRZ6SY');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (181,181,'Keane','HKJ96KJU6KF');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (182,182,'Imogene','MFX24LVO4VO');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (183,183,'Alexa','KOJ96KJX9LE');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (184,184,'Brianna','ESS16SSL0VM');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (185,185,'Martina','LMJ74UJM8HQ');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (186,186,'Mechelle','QLQ59WZR2JW');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (187,187,'Lillith','LVK68WTS4VL');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (188,188,'Vaughan','LRA21LJQ5CL');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (189,189,'Philip','OBL49LRB7XK');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (190,190,'Mary','VPA55BIW4YS');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (191,191,'Brynne','ZDM26TVX8NK');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (192,192,'Leandra','YZK36DUB5IQ');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (193,193,'Quynn','NLG96FIR2HY');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (194,194,'Steel','YTF53VAE7TO');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (195,195,'Malachi','PWJ65JJJ4VY');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (196,196,'Clayton','YQO56HDX8NR');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (197,197,'Cullen','ERE54BVN5DK');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (198,198,'Imelda','BJS13OUM4EJ');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (199,199,'Simon','ANF84VNX6KM');
INSERT INTO mbta_emplogin (loginid,employeeid,username,password)
VALUES (200,200,'Katell','EOK18VOA4EI');


----------------------------------------------------------------------------------------
--INSERT SCRIPTS FOR MBTA_EMPLOYEE
----------------------------------------------------------------------------------------

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


----------------------------------------------------------------------------------------
--INSERT SCRIPTS FOR MBTA_LOGIN
----------------------------------------------------------------------------------------

INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (1,1,'Hedwig','FIT35JGI8DJ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (2,2,'Cameron','TLH96PHF6HT');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (3,3,'Brooke','HSZ11IVN6YW');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (4,4,'Vielka','UOX95KCQ2WR');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (5,5,'Kevyn','OJU52JML3NN');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (6,6,'Eaton','SDU82DCY8RS');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (7,7,'Colin','EMZ45RTU8UA');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (8,8,'Brent','FOX72MYK2DF');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (9,9,'Nathaniel','CRA36FDL5GJ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (10,10,'Brady','CGW50SES7ON');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (11,11,'Zelenia','QMU76FKX9JQ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (12,12,'Fritz','SSN94NFP8QV');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (13,13,'Jolene','DJX08WAG5TA');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (14,14,'Alexa','CCJ68PAA9EE');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (15,15,'Dillon','NVP47ITV4JB');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (16,16,'Aquila','WTH51KCS3GX');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (17,17,'Talon','VOC51XUP1PF');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (18,18,'Brennan','HGF54UOF6HK');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (19,19,'Harriet','MIQ74FJT1CJ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (20,20,'Holmes','ITT82SOS0RS');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (21,21,'Jarrod','SKF56CLU5BQ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (22,22,'Marvin','PIN08REN0RN');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (23,23,'Isaiah','CHI48KQL7FT');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (24,24,'Kameko','HNT98COM5HX');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (25,25,'Orlando','BPT55BIP5YJ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (26,26,'Ali','CPB37MOP1SU');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (27,27,'Keith','EXQ67KHS6CH');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (28,28,'Uriah','JCO91DMI6XC');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (29,29,'Evangeline','VAF16WYT0HO');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (30,30,'Fatima','UYC37GNG2NZ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (31,31,'Lionel','TPG19XOP4YQ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (32,32,'Quail','KNA77QJH8SH');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (33,33,'Evan','GLN45IKC0PK');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (34,34,'Armando','VDF45NEF4CX');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (35,35,'Armand','PCX73VTE9RU');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (36,36,'Raya','GAN61CHW1JJ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (37,37,'Xena','IZI55CCD5YM');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (38,38,'Anastasia','MWG65GBW1OY');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (39,39,'Russell','RTP24FFQ5JF');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (40,40,'Isadora','VQM57GDY6JK');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (41,41,'Caleb','VBN89PLN7GT');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (42,42,'Raya','BBP53SDM3BM');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (43,43,'Julie','ADE04HOI1NP');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (44,44,'Quynn','OOI30IWV2DM');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (45,45,'Montana','PJX91XWQ3KX');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (46,46,'Leigh','AQD41CLO6WN');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (47,47,'Sage','TOJ32DVG5NK');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (48,48,'Mason','UFC89EKV2YJ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (49,49,'Asher','LVD73YDS1TT');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (50,50,'Kennan','WIH64QXA7HT');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (51,51,'Nigel','DEV75OTU3FE');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (52,52,'Amery','UTB68SDH0CG');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (53,53,'Gil','SKW53RLO2FY');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (54,54,'Libby','CFP08DSK3PN');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (55,55,'Upton','GDM17KLN7KI');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (56,56,'Hilel','SBF76FJW8FD');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (57,57,'Ulla','WTP46FOJ8JC');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (58,58,'Hedley','EQU22KGV0IO');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (59,59,'Kessie','EFU57UGX6NU');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (60,60,'Ezra','WPC08VBD9QR');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (61,61,'Jonas','RZB13QKT0YY');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (62,62,'Joel','XQX43JRU3KM');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (63,63,'Guinevere','XAG17PYY1KQ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (64,64,'Francis','OJB47PGO7RW');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (65,65,'Griffith','KHB86CPL4PQ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (66,66,'Margaret','BJP37XPY3AK');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (67,67,'Jennifer','IWH19VYR5BH');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (68,68,'Keegan','YIA71ELH4WZ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (69,69,'Constance','PSS42KPP6FS');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (70,70,'Denise','EZU46OQV2GT');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (71,71,'Ali','PJW52GLV6PX');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (72,72,'Barrett','PQC78QQT2GQ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (73,73,'Cheyenne','LMA10YTK4JS');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (74,74,'Edward','LSU65HRP4TO');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (75,75,'Melanie','EFU23STZ3BN');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (76,76,'Hakeem','RZO66CVX7EE');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (77,77,'Belle','GXV01XMD4IO');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (78,78,'Vanna','RAR92WDY8XQ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (79,79,'Juliet','NAK77NBJ2FD');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (80,80,'Hedley','MAW64ZUN9AA');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (81,81,'Ignatius','GNV88HOF2CF');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (82,82,'Velma','EUZ97CUS5QS');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (83,83,'Rebekah','AJO25FGY3FI');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (84,84,'Idola','GXG47VEH8XC');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (85,85,'Peter','FFS60YPY7VK');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (86,86,'Russell','LDD39RPY3BS');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (87,87,'Libby','XQX36PFF7JX');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (88,88,'Brock','EMP83YAY8LW');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (89,89,'Marsden','TGW75LAE9TW');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (90,90,'Melissa','EJC57FLI2VH');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (91,91,'Aristotle','JOP59YKK4XM');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (92,92,'Lucius','YGR23GKL4SX');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (93,93,'Meghan','CRG26GTE7NG');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (94,94,'Wallace','EZW64GTI2ZL');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (95,95,'Morgan','CHR67PQX5WS');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (96,96,'Sharon','KCF39KXW1NP');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (97,97,'Marshall','EBF55HJO4AS');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (98,98,'Lacy','VJO13LMQ4CE');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (99,99,'Yuli','QUT67ESK9OC');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (100,100,'Inez','WXJ34NZR3UR');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (101,101,'Omar','PPC71PNJ4XD');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (102,102,'Mufutau','WOX74IES7KH');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (103,103,'Marny','MAH26IVC6FI');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (104,104,'Nash','WHR50MCZ9SH');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (105,105,'Risa','ERF75ZYJ7BM');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (106,106,'Leo','HKV39XPK4KE');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (107,107,'Lev','PUM98GQJ6QK');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (108,108,'Thane','ZTB66HFS0QV');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (109,109,'Karyn','XSZ25EHQ7XC');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (110,110,'Declan','IYO91JJC5NC');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (111,111,'Lionel','WSV76UVF3RG');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (112,112,'Inga','HHN15UNJ1YD');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (113,113,'Chase','SHM07DNL8WS');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (114,114,'Camilla','KGL63JPH6GE');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (115,115,'Aspen','NGV34HTS6QD');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (116,116,'Marny','YEL21DTT7TF');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (117,117,'Stone','HGU35CSR5RQ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (118,118,'Rogan','VQD51GHL6OA');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (119,119,'Minerva','QLM31ODP5RV');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (120,120,'Kaye','FTK28DNQ9WG');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (121,121,'Hu','NIE62IMN2CR');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (122,122,'Gareth','FZQ58THD2XQ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (123,123,'Wynter','NLI80QII1GY');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (124,124,'Wylie','LFO93AEQ7UL');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (125,125,'Robin','UFU21OVJ8KN');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (126,126,'Kyle','YSQ34WJO1NL');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (127,127,'Zachary','KHQ31YPS4TH');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (128,128,'Shea','CIF72YLP6BY');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (129,129,'Ishmael','GJJ09UGO2TT');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (130,130,'Rina','HJT48QVY4KT');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (131,131,'Akeem','ATJ32JPY4YK');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (132,132,'Hadassah','QKG76OCI4KG');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (133,133,'Kelly','OWE40QFN7SO');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (134,134,'Tarik','WUH21LVP6AQ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (135,135,'Chester','SPY48ICC5LN');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (136,136,'Alexander','HOO97JJD5ME');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (137,137,'Ciaran','LMJ31IEY8MB');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (138,138,'Nolan','JBP11HVM5UH');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (139,139,'Rhea','CVG31MFT4ND');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (140,140,'Adam','CQS54IQV4SP');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (141,141,'Ivory','EWG82VSU7WT');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (142,142,'Berk','AHM75INQ1VT');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (143,143,'Amity','UON42UUP3ER');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (144,144,'Denise','OFP71FDD0CH');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (145,145,'Phelan','YDJ84BSB5BX');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (146,146,'Tatiana','JKD85SOV1ZC');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (147,147,'MacKenzie','CSI82QZU6JB');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (148,148,'Jakeem','WMQ48PIS7MO');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (149,149,'Roth','WCV17WTJ7SG');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (150,150,'Scott','YTE50CRD4DO');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (151,151,'Nash','IOI40PGY2EM');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (152,152,'Xavier','SDV66KVN5EJ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (153,153,'Amy','REG93XGJ1MV');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (154,154,'Nathaniel','JKC22BML4YU');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (155,155,'Blaze','IPV21UPW1QI');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (156,156,'Shoshana','LXE67UFF3DR');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (157,157,'Caleb','PFJ82QHX7TO');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (158,158,'Kaye','SBU39SCG9FQ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (159,159,'Chancellor','TFF24FUO3NJ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (160,160,'Kasimir','WBL47GLR3MI');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (161,161,'Ebony','DKD86IBP7TM');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (162,162,'Mia','RIF97RTX6GX');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (163,163,'Kiara','UGM26RDO2BP');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (164,164,'Luke','BWM12VDH7GY');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (165,165,'Tanisha','RLO14WYX8LD');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (166,166,'Jamalia','MJD94WBR5CX');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (167,167,'Porter','OGF43BHW6DV');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (168,168,'Mira','MQY71EYS6LG');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (169,169,'Odysseus','IIA51ZSE4ZI');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (170,170,'Nolan','YOW30HDJ7LS');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (171,171,'Sasha','XUC57RTU6OW');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (172,172,'Reese','TFM04YOO2GI');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (173,173,'Amela','QEK10JUJ8PP');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (174,174,'Miranda','YKE79WSX7AJ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (175,175,'Alfreda','NRM43KIQ9DX');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (176,176,'Abigail','GDN35QBP7NK');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (177,177,'Brenda','DXS26KDS8RW');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (178,178,'Hu','PAS41XGO4FR');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (179,179,'Scott','GSP35KWR7FF');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (180,180,'Urielle','DFD48OSY4FM');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (181,181,'Adele','MHN24EZC8HS');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (182,182,'Jared','QJU29KTJ2HV');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (183,183,'Barrett','XOR67VYI5GQ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (184,184,'Elijah','VCG16HIO6ZH');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (185,185,'Haley','WBP94LXV9VP');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (186,186,'August','GXV36BSA1FW');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (187,187,'Alexandra','CIA18UJN4JH');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (188,188,'Chelsea','MLE44QNS1NG');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (189,189,'Owen','AXX49OGW2QE');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (190,190,'Walter','DFM34MPE1ZO');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (191,191,'Ginger','JKJ59YZC4ER');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (192,192,'Calvin','ECS27SKQ5LK');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (193,193,'Neville','LAV48TSX5YZ');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (194,194,'George','XBH36QRJ4SG');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (195,195,'Ashely','RXY62IVG2EF');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (196,196,'Oleg','VET42EEF7FO');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (197,197,'Wade','BSL89IWU5NL');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (198,198,'Keegan','CJT25NEE2FE');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (199,199,'Ezekiel','ODO62PCQ7YU');
INSERT INTO MBTA_LOGIN (LOGINID,PASSENGERID,USERNAME,PASSWORD)
VALUES (200,200,'Channing','XKC56RQS5YN');


----------------------------------------------------------------------------------------
--INSERT SCRIPTS FOR MBTA_PASSENGER
----------------------------------------------------------------------------------------

INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (1,'Rolland','Corss',to_date('8/15/68', 'MM/DD/RRRR'),N'0 Bellgrove Point',N'New Bedford',N'MA',2745);
--Row 2
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (2,'Adrien','Boxe',to_date('4/12/79', 'MM/DD/RRRR'),N'58 Corscot Crossing',N'Springfield',N'MA',1105);
--Row 3
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (3,'Harlene','Bateson',to_date('5/17/18', 'MM/DD/RRRR'),N'797 Lillian Court',N'Springfield',N'MA',1105);
--Row 4
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (4,'Prinz','O''Mohun',to_date('9/17/72', 'MM/DD/RRRR'),N'931 Forest Run Point',N'Worcester',N'MA',1654);
--Row 5
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (5,'Ardath','Duffrie',to_date('1/31/61', 'MM/DD/RRRR'),N'158 Division Circle',N'Brockton',N'MA',2405);
--Row 6
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (6,'Cheri','Tregea',to_date('1/28/65', 'MM/DD/RRRR'),N'203 Holy Cross Center',N'Woburn',N'MA',1813);
--Row 7
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (7,'Ranique','Loan',to_date('12/17/82', 'MM/DD/RRRR'),N'6 Mayfield Drive',N'Cambridge',N'MA',2142);
--Row 8
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (8,'Chev','Josefsson',to_date('10/3/10', 'MM/DD/RRRR'),N'87498 Cambridge Court',N'Brockton',N'MA',2405);
--Row 9
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (9,'Shayne','Szanto',to_date('7/21/00', 'MM/DD/RRRR'),N'71866 Merry Pass',N'Boston',N'MA',2298);
--Row 10
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (10,'Kristo','Mochan',to_date('10/14/64', 'MM/DD/RRRR'),N'947 Armistice Way',N'Brockton',N'MA',2405);
--Row 11
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (11,'Orland','Crankshaw',to_date('10/1/18', 'MM/DD/RRRR'),N'782 Stang Trail',N'Cambridge',N'MA',2142);
--Row 12
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (12,'Myrvyn','Frise',to_date('12/9/93', 'MM/DD/RRRR'),N'593 Schlimgen Junction',N'Cambridge',N'MA',2142);
--Row 13
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (13,'Ara','McPaike',to_date('9/26/16', 'MM/DD/RRRR'),N'36 Oak Valley Point',N'Boston',N'MA',2114);
--Row 14
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (14,'Lewes','Guitt',to_date('4/6/75', 'MM/DD/RRRR'),N'14 Northridge Drive',N'Springfield',N'MA',1152);
--Row 15
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (15,'Daune','Caraher',to_date('12/24/01', 'MM/DD/RRRR'),N'235 Blue Bill Park Street',N'Springfield',N'MA',1129);
--Row 16
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (16,'Curcio','Ossenna',to_date('1/27/68', 'MM/DD/RRRR'),N'48 Moland Alley',N'Worcester',N'MA',1610);
--Row 17
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (17,'Waylan','Gaunter',to_date('8/25/11', 'MM/DD/RRRR'),N'7 Nobel Avenue',N'Boston',N'MA',2283);
--Row 18
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (18,'Cheston','Parsonson',to_date('5/16/87', 'MM/DD/RRRR'),N'3 Kipling Street',N'Boston',N'MA',2114);
--Row 19
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (19,'Myrna','Barnbrook',to_date('10/11/01', 'MM/DD/RRRR'),N'24 Vermont Street',N'Boston',N'MA',2124);
--Row 20
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (20,'Bartolemo','Mithan',to_date('5/15/86', 'MM/DD/RRRR'),N'747 Kensington Plaza',N'Woburn',N'MA',1813);
--Row 21
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (21,'Bennie','MacKenney',to_date('8/28/61', 'MM/DD/RRRR'),N'6 Holmberg Terrace',N'Springfield',N'MA',1105);
--Row 22
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (22,'Randee','Carde',to_date('3/14/97', 'MM/DD/RRRR'),N'8957 Rusk Lane',N'Cambridge',N'MA',2142);
--Row 23
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (23,'Boot','Hotson',to_date('3/26/64', 'MM/DD/RRRR'),N'6082 Orin Terrace',N'New Bedford',N'MA',2745);
--Row 24
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (24,'Hernando','Schust',to_date('9/15/74', 'MM/DD/RRRR'),N'3 Elka Center',N'Portsmouth',N'NH',214);
--Row 25
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (25,'Myrle','Rule',to_date('11/23/74', 'MM/DD/RRRR'),N'491 Meadow Vale Parkway',N'Boston',N'MA',2109);
--Row 26
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (26,'Bunny','Entwhistle',to_date('12/21/11', 'MM/DD/RRRR'),N'85 Merrick Place',N'Lynn',N'MA',1905);
--Row 27
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (27,'Wiley','Amesbury',to_date('11/9/97', 'MM/DD/RRRR'),N'212 Annamark Court',N'Brockton',N'MA',2405);
--Row 28
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (28,'Lee','Audibert',to_date('11/1/97', 'MM/DD/RRRR'),N'8893 Calypso Hill',N'Springfield',N'MA',1152);
--Row 29
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (29,'Evania','Boulden',to_date('8/29/78', 'MM/DD/RRRR'),N'84042 Fieldstone Way',N'Springfield',N'MA',1105);
--Row 30
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (30,'Morgan','Grayham',to_date('10/22/94', 'MM/DD/RRRR'),N'7374 American Ash Street',N'Boston',N'MA',2208);
--Row 31
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (31,'Reeta','Liccardo',to_date('3/4/13', 'MM/DD/RRRR'),N'46 Cottonwood Park',N'Boston',N'MA',2208);
--Row 32
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (32,'Hadrian','Compfort',to_date('7/9/73', 'MM/DD/RRRR'),N'4 Summit Point',N'Worcester',N'MA',1654);
--Row 33
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (33,'Nils','Rosier',to_date('8/16/79', 'MM/DD/RRRR'),N'07216 Scofield Point',N'Springfield',N'MA',1105);
--Row 34
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (34,'Hedwig','Quarrell',to_date('10/3/96', 'MM/DD/RRRR'),N'2 Eastwood Crossing',N'Manchester',N'NH',3105);
--Row 35
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (35,'Dorine','Dimmer',to_date('9/23/10', 'MM/DD/RRRR'),N'7 Hintze Place',N'Worcester',N'MA',1654);
--Row 36
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (36,'Orsa','Witsey',to_date('2/18/01', 'MM/DD/RRRR'),N'0111 Gerald Alley',N'Brockton',N'MA',2405);
--Row 37
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (37,'Zia','Eloi',to_date('1/18/61', 'MM/DD/RRRR'),N'8351 David Trail',N'Boston',N'MA',2114);
--Row 38
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (38,'Kelsey','Viccars',to_date('11/14/03', 'MM/DD/RRRR'),N'93707 American Avenue',N'Brockton',N'MA',2405);
--Row 39
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (39,'Desmund','Wych',to_date('2/9/03', 'MM/DD/RRRR'),N'42 Westerfield Place',N'Boston',N'MA',2104);
--Row 40
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (40,'Elizabeth','Dunnan',to_date('5/30/60', 'MM/DD/RRRR'),N'42 High Crossing Center',N'Newton',N'MA',2458);
--Row 41
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (41,'Gizela','French',to_date('5/28/11', 'MM/DD/RRRR'),N'3717 Fremont Pass',N'Boston',N'MA',2163);
--Row 42
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (42,'Cecil','Horsefield',to_date('3/18/80', 'MM/DD/RRRR'),N'3890 Canary Park',N'Boston',N'MA',2124);
--Row 43
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (43,'Vally','Daid',to_date('8/31/04', 'MM/DD/RRRR'),N'13 Moose Way',N'Brockton',N'MA',2305);
--Row 44
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (44,'Gabrila','Drife',to_date('5/21/83', 'MM/DD/RRRR'),N'9 Paget Junction',N'Boston',N'MA',2163);
--Row 45
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (45,'Tyne','Barthorpe',to_date('5/25/21', 'MM/DD/RRRR'),N'67397 Schurz Avenue',N'Boston',N'MA',2163);
--Row 46
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (46,'Timmie','Gres',to_date('4/21/63', 'MM/DD/RRRR'),N'91766 4th Court',N'Springfield',N'MA',1105);
--Row 47
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (47,'Rebbecca','Griniov',to_date('3/12/60', 'MM/DD/RRRR'),N'0579 Heath Trail',N'Springfield',N'MA',1105);
--Row 48
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (48,'Irvin','Niland',to_date('6/30/97', 'MM/DD/RRRR'),N'81 Little Fleur Drive',N'Boston',N'MA',2104);
--Row 49
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (49,'Gennifer','Flinn',to_date('2/28/00', 'MM/DD/RRRR'),N'86 Michigan Park',N'Watertown',N'MA',2472);
--Row 50
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (50,'Pet','Grzesiak',to_date('5/29/08', 'MM/DD/RRRR'),N'33 Eagle Crest Alley',N'Worcester',N'MA',1610);
--Row 51
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (51,'Libbi','Esler',to_date('6/8/14', 'MM/DD/RRRR'),N'1 Harbort Road',N'Springfield',N'MA',1114);
--Row 52
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (52,'Redd','Fever',to_date('11/22/16', 'MM/DD/RRRR'),N'4 Brickson Park Circle',N'Boston',N'MA',2208);
--Row 53
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (53,'Randy','Wakeley',to_date('12/31/98', 'MM/DD/RRRR'),N'844 Wayridge Junction',N'Newton',N'MA',2458);
--Row 54
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (54,'Fonzie','Fisbburne',to_date('4/20/04', 'MM/DD/RRRR'),N'81780 Briar Crest Place',N'Cambridge',N'MA',2142);
--Row 55
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (55,'Lazaro','Beetlestone',to_date('7/21/61', 'MM/DD/RRRR'),N'1 Clemons Road',N'Boston',N'MA',2203);
--Row 56
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (56,'Harwell','Putton',to_date('1/8/07', 'MM/DD/RRRR'),N'969 Onsgard Alley',N'Worcester',N'MA',1605);
--Row 57
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (57,'Jourdan','Aymer',to_date('1/4/65', 'MM/DD/RRRR'),N'85 Hintze Center',N'Lynn',N'MA',1905);
--Row 58
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (58,'Madalena','Gatsby',to_date('6/10/81', 'MM/DD/RRRR'),N'74203 Miller Terrace',N'Portsmouth',N'NH',214);
--Row 59
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (59,'Randie','Macy',to_date('11/29/72', 'MM/DD/RRRR'),N'5413 Lotheville Court',N'Boston',N'MA',2298);
--Row 60
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (60,'Nesta','Clace',to_date('7/25/69', 'MM/DD/RRRR'),N'4056 Prairieview Point',N'Brockton',N'MA',2405);
--Row 61
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (61,'Ferrel','Sidgwick',to_date('5/27/90', 'MM/DD/RRRR'),N'29431 7th Trail',N'Springfield',N'MA',1129);
--Row 62
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (62,'Osborn','Challender',to_date('5/11/81', 'MM/DD/RRRR'),N'72 Emmet Street',N'Waltham',N'MA',2453);
--Row 63
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (63,'Renaud','Swepstone',to_date('6/13/87', 'MM/DD/RRRR'),N'6 Reinke Lane',N'Boston',N'MA',2124);
--Row 64
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (64,'Melessa','Gerriet',to_date('2/14/83', 'MM/DD/RRRR'),N'54851 Canary Terrace',N'Boston',N'MA',2298);
--Row 65
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (65,'Ddene','Stirland',to_date('8/26/96', 'MM/DD/RRRR'),N'733 Westerfield Avenue',N'Worcester',N'MA',1654);
--Row 66
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (66,'Hinze','Bremond',to_date('11/6/05', 'MM/DD/RRRR'),N'911 Vermont Circle',N'Boston',N'MA',2208);
--Row 67
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (67,'Florida','Eddowis',to_date('1/12/67', 'MM/DD/RRRR'),N'76725 Mitchell Plaza',N'Boston',N'MA',2109);
--Row 68
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (68,'Norby','Toffler',to_date('7/17/09', 'MM/DD/RRRR'),N'4100 Stuart Court',N'Brockton',N'MA',2305);
--Row 69
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (69,'Harrie','Cappleman',to_date('11/10/98', 'MM/DD/RRRR'),N'720 Fremont Terrace',N'Springfield',N'MA',1129);
--Row 70
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (70,'Mychal','Blacksell',to_date('8/30/83', 'MM/DD/RRRR'),N'36 Northport Lane',N'Springfield',N'MA',1114);
--Row 71
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (71,'Harland','Deakin',to_date('12/19/18', 'MM/DD/RRRR'),N'8 Warrior Center',N'Springfield',N'MA',1105);
--Row 72
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (72,'Jourdan','Calkin',to_date('4/6/60', 'MM/DD/RRRR'),N'1 Mcbride Crossing',N'Boston',N'MA',2124);
--Row 73
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (73,'Christophorus','Shawell',to_date('2/2/02', 'MM/DD/RRRR'),N'52 International Plaza',N'Boston',N'MA',2163);
--Row 74
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (74,'Ruperto','Whatham',to_date('2/9/11', 'MM/DD/RRRR'),N'58957 Huxley Road',N'Waltham',N'MA',2453);
--Row 75
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (75,'Brigitta','Iacobetto',to_date('11/4/21', 'MM/DD/RRRR'),N'9 Ridgeview Avenue',N'Portsmouth',N'NH',214);
--Row 76
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (76,'Cayla','Ballintyne',to_date('6/20/05', 'MM/DD/RRRR'),N'9 Golf Course Circle',N'Boston',N'MA',2208);
--Row 77
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (77,'Wade','Dobby',to_date('8/24/62', 'MM/DD/RRRR'),N'6 Cardinal Place',N'Brockton',N'MA',2305);
--Row 78
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (78,'Mayne','Cavan',to_date('3/28/97', 'MM/DD/RRRR'),N'28 Mendota Crossing',N'Brockton',N'MA',2305);
--Row 79
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (79,'Dorisa','Hillett',to_date('11/7/10', 'MM/DD/RRRR'),N'66 Tony Avenue',N'Springfield',N'MA',1114);
--Row 80
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (80,'Aurore','Klejin',to_date('8/7/73', 'MM/DD/RRRR'),N'12 Lerdahl Lane',N'Boston',N'MA',2203);
--Row 81
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (81,'Thane','Saville',to_date('12/31/64', 'MM/DD/RRRR'),N'81618 Ridgeway Plaza',N'Boston',N'MA',2283);
--Row 82
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (82,'Clarie','Blewmen',to_date('5/13/18', 'MM/DD/RRRR'),N'3 Caliangt Plaza',N'Boston',N'MA',2104);
--Row 83
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (83,'Wernher','Galland',to_date('6/2/84', 'MM/DD/RRRR'),N'5577 Mallard Road',N'Boston',N'MA',2119);
--Row 84
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (84,'Ivory','Swinden',to_date('4/9/66', 'MM/DD/RRRR'),N'4 Bellgrove Circle',N'Newton',N'MA',2162);
--Row 85
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (85,'Ase','Puddle',to_date('1/16/19', 'MM/DD/RRRR'),N'1120 Di Loreto Alley',N'Watertown',N'MA',2472);
--Row 86
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (86,'Elijah','Skep',to_date('12/24/93', 'MM/DD/RRRR'),N'479 Karstens Center',N'Newton',N'MA',2162);
--Row 87
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (87,'Drucie','Siverns',to_date('2/14/95', 'MM/DD/RRRR'),N'488 Hoard Plaza',N'Boston',N'MA',2208);
--Row 88
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (88,'Rudolfo','Deyes',to_date('8/23/06', 'MM/DD/RRRR'),N'7061 Hoepker Way',N'Woburn',N'MA',1813);
--Row 89
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (89,'Penny','Jaumet',to_date('10/18/68', 'MM/DD/RRRR'),N'43563 Wayridge Alley',N'Cambridge',N'MA',2142);
--Row 90
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (90,'Junie','Skea',to_date('1/4/75', 'MM/DD/RRRR'),N'503 Elgar Way',N'Boston',N'MA',2109);
--Row 91
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (91,'Cos','Gobourn',to_date('1/6/92', 'MM/DD/RRRR'),N'68620 Lighthouse Bay Avenue',N'Boston',N'MA',2114);
--Row 92
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (92,'Bailie','Menichino',to_date('7/5/97', 'MM/DD/RRRR'),N'65119 Dottie Lane',N'Boston',N'MA',2208);
--Row 93
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (93,'Liv','Ferraraccio',to_date('7/25/87', 'MM/DD/RRRR'),N'0 Sage Street',N'New Bedford',N'MA',2745);
--Row 94
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (94,'Gael','Barstowk',to_date('8/12/83', 'MM/DD/RRRR'),N'8 Drewry Court',N'Boston',N'MA',2298);
--Row 95
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (95,'Eveline','Hutson',to_date('8/11/00', 'MM/DD/RRRR'),N'48 Bonner Center',N'Manchester',N'NH',3105);
--Row 96
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (96,'Patty','Seaborn',to_date('12/27/14', 'MM/DD/RRRR'),N'90217 Reindahl Hill',N'Manchester',N'NH',3105);
--Row 97
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (97,'Martha','Openshaw',to_date('12/15/89', 'MM/DD/RRRR'),N'54996 Rusk Terrace',N'Worcester',N'MA',1605);
--Row 98
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (98,'Donica','Cokely',to_date('5/28/14', 'MM/DD/RRRR'),N'62907 Rockefeller Parkway',N'Boston',N'MA',2114);
--Row 99
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (99,'Vick','Badder',to_date('2/22/92', 'MM/DD/RRRR'),N'163 Randy Way',N'Springfield',N'MA',1114);
--Row 100
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (100,'Cob','Halversen',to_date('5/19/61', 'MM/DD/RRRR'),N'96657 Grasskamp Plaza',N'Springfield',N'MA',1114);
--Row 101
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (101,'Jessee','Ginley',to_date('7/10/20', 'MM/DD/RRRR'),N'2819 Bobwhite Avenue',N'Worcester',N'MA',1610);
--Row 102
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (102,'Ophelie','Gecke',to_date('5/10/89', 'MM/DD/RRRR'),N'8 School Trail',N'Portsmouth',N'NH',3804);
--Row 103
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (103,'Jerrold','Burkinshaw',to_date('7/30/86', 'MM/DD/RRRR'),N'18 Menomonie Junction',N'Boston',N'MA',2104);
--Row 104
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (104,'Antoni','Garn',to_date('6/15/81', 'MM/DD/RRRR'),N'66 Messerschmidt Street',N'Watertown',N'MA',2472);
--Row 105
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (105,'Doro','Dundon',to_date('1/24/14', 'MM/DD/RRRR'),N'29 Coleman Court',N'Worcester',N'MA',1605);
--Row 106
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (106,'Duky','Dabnot',to_date('3/25/60', 'MM/DD/RRRR'),N'9 Welch Point',N'Cambridge',N'MA',2142);
--Row 107
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (107,'Byrle','Cucuzza',to_date('6/19/95', 'MM/DD/RRRR'),N'44 Dunning Pass',N'Portsmouth',N'NH',214);
--Row 108
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (108,'Yasmin','Shory',to_date('6/2/85', 'MM/DD/RRRR'),N'20033 Sachtjen Park',N'Boston',N'MA',2124);
--Row 109
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (109,'Sarge','Liddicoat',to_date('1/8/88', 'MM/DD/RRRR'),N'437 Mendota Terrace',N'Boston',N'MA',2119);
--Row 110
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (110,'Rianon','Liptrot',to_date('1/21/65', 'MM/DD/RRRR'),N'33 Warrior Park',N'Boston',N'MA',2163);
--Row 111
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (111,'Claudie','Courson',to_date('1/26/01', 'MM/DD/RRRR'),N'19177 Warner Terrace',N'Springfield',N'MA',1114);
--Row 112
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (112,'Lydon','Kemer',to_date('5/22/07', 'MM/DD/RRRR'),N'185 Menomonie Court',N'Brockton',N'MA',2305);
--Row 113
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (113,'Garrett','Beauly',to_date('2/19/80', 'MM/DD/RRRR'),N'9444 Southridge Way',N'Watertown',N'MA',2472);
--Row 114
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (114,'Bryan','Lace',to_date('10/9/05', 'MM/DD/RRRR'),N'264 Moland Pass',N'Boston',N'MA',2216);
--Row 115
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (115,'Felice','Laughlin',to_date('6/13/98', 'MM/DD/RRRR'),N'095 Clarendon Terrace',N'Worcester',N'MA',1605);
--Row 116
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (116,'Caitlin','Hatherill',to_date('12/14/94', 'MM/DD/RRRR'),N'297 Rigney Point',N'Boston',N'MA',2203);
--Row 117
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (117,'Baldwin','Pancost',to_date('6/8/15', 'MM/DD/RRRR'),N'267 Hanover Circle',N'Springfield',N'MA',1152);
--Row 118
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (118,'Rob','Woodyatt',to_date('5/9/06', 'MM/DD/RRRR'),N'5362 Florence Road',N'New Bedford',N'MA',2745);
--Row 119
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (119,'Ellynn','Caulwell',to_date('7/18/80', 'MM/DD/RRRR'),N'4493 Karstens Plaza',N'Springfield',N'MA',1114);
--Row 120
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (120,'Sukey','Canellas',to_date('11/22/13', 'MM/DD/RRRR'),N'5 Eastwood Crossing',N'Boston',N'MA',2114);
--Row 121
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (121,'Audie','Ballin',to_date('8/8/99', 'MM/DD/RRRR'),N'69 Moose Point',N'Springfield',N'MA',1114);
--Row 122
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (122,'Leigha','Jayes',to_date('9/17/12', 'MM/DD/RRRR'),N'641 Red Cloud Road',N'Portsmouth',N'NH',214);
--Row 123
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (123,'Stevana','Bonicelli',to_date('1/21/89', 'MM/DD/RRRR'),N'2685 Manitowish Parkway',N'Springfield',N'MA',1114);
--Row 124
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (124,'Jazmin','Scudder',to_date('5/19/02', 'MM/DD/RRRR'),N'013 Becker Road',N'Manchester',N'NH',3105);
--Row 125
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (125,'Jordain','Quene',to_date('8/28/84', 'MM/DD/RRRR'),N'98 Monterey Street',N'Springfield',N'MA',1152);
--Row 126
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (126,'Rosamond','Hodges',to_date('9/30/87', 'MM/DD/RRRR'),N'102 Darwin Way',N'Manchester',N'NH',3105);
--Row 127
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (127,'Kippy','Brazier',to_date('7/7/69', 'MM/DD/RRRR'),N'130 Golden Leaf Plaza',N'Boston',N'MA',2208);
--Row 128
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (128,'Jakie','Gibbett',to_date('12/2/62', 'MM/DD/RRRR'),N'2 Crescent Oaks Park',N'Worcester',N'MA',1610);
--Row 129
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (129,'Jacquie','Hayworth',to_date('12/16/96', 'MM/DD/RRRR'),N'1 Sundown Road',N'Brockton',N'MA',2305);
--Row 130
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (130,'Kinna','Whitington',to_date('1/28/92', 'MM/DD/RRRR'),N'18 Dapin Lane',N'Watertown',N'MA',2472);
--Row 131
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (131,'Orel','Poolman',to_date('3/23/15', 'MM/DD/RRRR'),N'25942 Forster Drive',N'Boston',N'MA',2109);
--Row 132
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (132,'Glynn','Emerine',to_date('10/4/21', 'MM/DD/RRRR'),N'40 Hoard Circle',N'Boston',N'MA',2208);
--Row 133
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (133,'Sarina','Lyall',to_date('12/5/85', 'MM/DD/RRRR'),N'30 Bunting Park',N'New Bedford',N'MA',2745);
--Row 134
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (134,'Denna','Shakespeare',to_date('2/9/75', 'MM/DD/RRRR'),N'55 Scoville Street',N'Boston',N'MA',2163);
--Row 135
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (135,'Burch','Mitrikhin',to_date('12/28/08', 'MM/DD/RRRR'),N'832 Merrick Hill',N'Portsmouth',N'NH',214);
--Row 136
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (136,'Leshia','McCane',to_date('1/18/85', 'MM/DD/RRRR'),N'5 Hoepker Terrace',N'Boston',N'MA',2114);
--Row 137
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (137,'Guinna','Oris',to_date('7/28/70', 'MM/DD/RRRR'),N'7 Village Place',N'Boston',N'MA',2208);
--Row 138
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (138,'Phoebe','Fendley',to_date('4/13/19', 'MM/DD/RRRR'),N'13012 Manitowish Drive',N'Boston',N'MA',2163);
--Row 139
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (139,'Katalin','Marsie',to_date('3/15/14', 'MM/DD/RRRR'),N'8001 Derek Way',N'Springfield',N'MA',1152);
--Row 140
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (140,'Georgeanna','Garling',to_date('9/12/75', 'MM/DD/RRRR'),N'8 Randy Way',N'Portsmouth',N'NH',3804);
--Row 141
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (141,'Ally','Cadwaladr',to_date('2/18/66', 'MM/DD/RRRR'),N'2 Fremont Avenue',N'Newton',N'MA',2458);
--Row 142
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (142,'Zenia','Pleasants',to_date('3/20/85', 'MM/DD/RRRR'),N'8 Marquette Way',N'Cambridge',N'MA',2142);
--Row 143
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (143,'Falito','Danilewicz',to_date('7/1/21', 'MM/DD/RRRR'),N'1255 Heffernan Trail',N'Springfield',N'MA',1114);
--Row 144
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (144,'Bernie','Dalyell',to_date('12/8/88', 'MM/DD/RRRR'),N'399 Haas Terrace',N'Worcester',N'MA',1605);
--Row 145
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (145,'Tyne','Vondruska',to_date('12/19/68', 'MM/DD/RRRR'),N'9161 Mallory Plaza',N'Boston',N'MA',2114);
--Row 146
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (146,'Philbert','Larchiere',to_date('10/22/92', 'MM/DD/RRRR'),N'97 Elgar Lane',N'Worcester',N'MA',1610);
--Row 147
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (147,'Elvina','Hightown',to_date('4/22/03', 'MM/DD/RRRR'),N'82744 Pine View Trail',N'Brockton',N'MA',2405);
--Row 148
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (148,'Kyla','Leith-Harvey',to_date('11/3/20', 'MM/DD/RRRR'),N'73 Dakota Place',N'Watertown',N'MA',2472);
--Row 149
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (149,'Gayel','Aldersley',to_date('6/12/16', 'MM/DD/RRRR'),N'8 Rutledge Plaza',N'Brockton',N'MA',2305);
--Row 150
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (150,'Louella','Pardew',to_date('12/16/61', 'MM/DD/RRRR'),N'6 Sauthoff Junction',N'Waltham',N'MA',2453);
--Row 151
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (151,'Urbanus','Hatherleigh',to_date('5/4/72', 'MM/DD/RRRR'),N'8 Ludington Road',N'Worcester',N'MA',1605);
--Row 152
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (152,'Philly','Marrows',to_date('2/21/95', 'MM/DD/RRRR'),N'30 Golden Leaf Pass',N'Worcester',N'MA',1610);
--Row 153
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (153,'Drona','Durrell',to_date('5/8/96', 'MM/DD/RRRR'),N'72810 Cordelia Circle',N'Springfield',N'MA',1105);
--Row 154
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (154,'Jordan','Kenworthey',to_date('11/6/17', 'MM/DD/RRRR'),N'92 Stuart Junction',N'Boston',N'MA',2216);
--Row 155
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (155,'Leoine','Dailey',to_date('5/2/73', 'MM/DD/RRRR'),N'6 Garrison Terrace',N'Newton',N'MA',2162);
--Row 156
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (156,'Kimberlee','Tommeo',to_date('2/2/96', 'MM/DD/RRRR'),N'62669 Transport Pass',N'Boston',N'MA',2283);
--Row 157
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (157,'Arlen','Wearden',to_date('12/9/11', 'MM/DD/RRRR'),N'5375 Cambridge Junction',N'Boston',N'MA',2163);
--Row 158
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (158,'Hurleigh','McAlester',to_date('11/16/10', 'MM/DD/RRRR'),N'67762 Memorial Terrace',N'Boston',N'MA',2119);
--Row 159
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (159,'Rozalie','Simeoni',to_date('7/12/65', 'MM/DD/RRRR'),N'429 Bashford Terrace',N'Boston',N'MA',2298);
--Row 160
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (160,'Kelwin','Petschel',to_date('12/6/76', 'MM/DD/RRRR'),N'2 Dennis Trail',N'Worcester',N'MA',1654);
--Row 161
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (161,'Birch','Turbill',to_date('5/21/93', 'MM/DD/RRRR'),N'85 Hooker Point',N'Newton',N'MA',2458);
--Row 162
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (162,'Vida','Douberday',to_date('11/6/00', 'MM/DD/RRRR'),N'641 Columbus Hill',N'Worcester',N'MA',1610);
--Row 163
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (163,'Kelby','McPhelim',to_date('9/27/60', 'MM/DD/RRRR'),N'7 Green Junction',N'Boston',N'MA',2163);
--Row 164
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (164,'Jocelin','Labb',to_date('7/14/92', 'MM/DD/RRRR'),N'6505 Union Pass',N'Boston',N'MA',2298);
--Row 165
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (165,'Starla','Leving',to_date('1/16/61', 'MM/DD/RRRR'),N'27103 Northwestern Street',N'Cambridge',N'MA',2142);
--Row 166
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (166,'Coreen','Petheridge',to_date('12/3/73', 'MM/DD/RRRR'),N'0 Maywood Street',N'Cambridge',N'MA',2142);
--Row 167
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (167,'Fiann','De Atta',to_date('2/12/70', 'MM/DD/RRRR'),N'849 Dwight Drive',N'Watertown',N'MA',2472);
--Row 168
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (168,'Quintilla','Sharpin',to_date('2/25/15', 'MM/DD/RRRR'),N'504 Hanover Lane',N'New Bedford',N'MA',2745);
--Row 169
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (169,'Godard','Milner',to_date('7/25/69', 'MM/DD/RRRR'),N'0 Prairie Rose Avenue',N'Woburn',N'MA',1813);
--Row 170
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (170,'Waiter','Dacres',to_date('12/13/02', 'MM/DD/RRRR'),N'0 Mallory Plaza',N'Woburn',N'MA',1813);
--Row 171
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (171,'Dulcia','Crockett',to_date('2/28/66', 'MM/DD/RRRR'),N'549 Sommers Center',N'Boston',N'MA',2114);
--Row 172
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (172,'Bobby','Cawdron',to_date('5/27/95', 'MM/DD/RRRR'),N'4161 Debs Parkway',N'Waltham',N'MA',2453);
--Row 173
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (173,'Natassia','Giacomo',to_date('9/14/96', 'MM/DD/RRRR'),N'0 Division Road',N'Manchester',N'NH',3105);
--Row 174
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (174,'Magdaia','Gwinnell',to_date('6/11/10', 'MM/DD/RRRR'),N'26434 Dakota Pass',N'Boston',N'MA',2124);
--Row 175
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (175,'Lesly','Toppin',to_date('9/8/05', 'MM/DD/RRRR'),N'7620 Packers Terrace',N'Boston',N'MA',2104);
--Row 176
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (176,'Tades','Blade',to_date('3/25/72', 'MM/DD/RRRR'),N'869 Springview Park',N'Worcester',N'MA',1605);
--Row 177
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (177,'Ulric','Aykroyd',to_date('3/7/01', 'MM/DD/RRRR'),N'521 Ramsey Place',N'Worcester',N'MA',1654);
--Row 178
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (178,'Woodie','Somers',to_date('4/28/91', 'MM/DD/RRRR'),N'73 Westend Road',N'Boston',N'MA',2216);
--Row 179
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (179,'Ede','Jewel',to_date('9/27/17', 'MM/DD/RRRR'),N'404 Redwing Drive',N'Brockton',N'MA',2305);
--Row 180
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (180,'Clementia','A''Barrow',to_date('1/22/93', 'MM/DD/RRRR'),N'13 Declaration Park',N'Lynn',N'MA',1905);
--Row 181
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (181,'Helyn','Bangle',to_date('4/17/92', 'MM/DD/RRRR'),N'99 Oak Terrace',N'Worcester',N'MA',1605);
--Row 182
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (182,'Claudia','Cockshott',to_date('5/4/75', 'MM/DD/RRRR'),N'5 Hollow Ridge Drive',N'Worcester',N'MA',1654);
--Row 183
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (183,'Lin','Benezet',to_date('12/3/94', 'MM/DD/RRRR'),N'848 7th Court',N'Boston',N'MA',2109);
--Row 184
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (184,'Kassi','Mandal',to_date('8/16/03', 'MM/DD/RRRR'),N'8 Brown Avenue',N'Boston',N'MA',2216);
--Row 185
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (185,'Pansie','Durham',to_date('1/30/80', 'MM/DD/RRRR'),N'91739 Toban Road',N'Boston',N'MA',2104);
--Row 186
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (186,'Glennis','Schenkel',to_date('2/7/93', 'MM/DD/RRRR'),N'2 3rd Court',N'Boston',N'MA',2163);
--Row 187
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (187,'Sapphira','Lansley',to_date('7/28/06', 'MM/DD/RRRR'),N'2 Northfield Court',N'Watertown',N'MA',2472);
--Row 188
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (188,'Sallyann','Amiss',to_date('12/17/77', 'MM/DD/RRRR'),N'68 Sundown Plaza',N'Lynn',N'MA',1905);
--Row 189
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (189,'Berkly','Boulden',to_date('8/28/05', 'MM/DD/RRRR'),N'09913 Florence Road',N'Worcester',N'MA',1654);
--Row 190
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (190,'Dal','Leadstone',to_date('5/28/95', 'MM/DD/RRRR'),N'6 Truax Center',N'Boston',N'MA',2124);
--Row 191
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (191,'Codi','Dight',to_date('4/1/87', 'MM/DD/RRRR'),N'11414 Corry Circle',N'Springfield',N'MA',1152);
--Row 192
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (192,'Catina','Soden',to_date('6/12/17', 'MM/DD/RRRR'),N'66543 Welch Trail',N'Springfield',N'MA',1152);
--Row 193
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (193,'Sharl','Basil',to_date('7/14/80', 'MM/DD/RRRR'),N'568 Saint Paul Center',N'Boston',N'MA',2163);
--Row 194
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (194,'Hortensia','Guthrie',to_date('8/15/85', 'MM/DD/RRRR'),N'42 Burning Wood Point',N'New Bedford',N'MA',2745);
--Row 195
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (195,'Iago','Beggini',to_date('10/26/98', 'MM/DD/RRRR'),N'86 Ruskin Drive',N'Watertown',N'MA',2472);
--Row 196
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (196,'Skip','Vlasin',to_date('3/31/92', 'MM/DD/RRRR'),N'787 Dawn Drive',N'Boston',N'MA',2119);
--Row 197
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (197,'Alyce','Middle',to_date('12/2/92', 'MM/DD/RRRR'),N'00070 Brentwood Junction',N'Boston',N'MA',2298);
--Row 198
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (198,'Lowe','Musico',to_date('2/14/76', 'MM/DD/RRRR'),N'081 Pearson Pass',N'Cambridge',N'MA',2142);
--Row 199
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (199,'Augusto','McEntegart',to_date('6/22/09', 'MM/DD/RRRR'),N'7783 Jenna Park',N'Boston',N'MA',2119);
--Row 200
INSERT INTO MBTA_PASSENGER (PASSENGERID, PASSENGERFNAME, PASSENGERLNAME, DOB, ADDRESS, CITY, STATE, ZIPCODE) VALUES (200,'Ericka','Ortes',to_date('1/27/95', 'MM/DD/RRRR'),N'349 Coolidge Terrace',N'Springfield',N'MA',1114);

----------------------------------------------------------------------------------------
--INSERT SCRIPTS FOR MBTA_CHARLIE
----------------------------------------------------------------------------------------

--Insert failed for rows  1  through  1000 
--ORA-00001: unique constraint (ADMIN.SYS_C0027582) violated
--Row 1
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9401450153,1,984,720,NULL,943,to_date('10/8/28', 'MM/DD/RRRR'));
--Row 2
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (6982907376,2,853,583,NULL,682,to_date('4/22/26', 'MM/DD/RRRR'));
--Row 3
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (5494104559,3,586,368,5.04837E+15,406,to_date('8/24/23', 'MM/DD/RRRR'));
--Row 4
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (7346731719,4,349,698,NULL,345,to_date('12/14/30', 'MM/DD/RRRR'));
--Row 5
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1034882325,5,531,934,NULL,522,to_date('9/14/22', 'MM/DD/RRRR'));
--Row 6
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (5137161136,6,794,820,NULL,593,to_date('12/24/29', 'MM/DD/RRRR'));
--Row 7
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8386076895,7,537,289,5.10876E+15,988,to_date('8/10/24', 'MM/DD/RRRR'));
--Row 8
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (602782198,8,812,209,NULL,836,to_date('10/16/26', 'MM/DD/RRRR'));
--Row 9
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (7589210757,9,731,460,5.10876E+15,975,to_date('11/17/23', 'MM/DD/RRRR'));
--Row 10
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8528453405,10,417,662,NULL,558,to_date('1/31/27', 'MM/DD/RRRR'));
--Row 11
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3420321503,11,142,259,NULL,707,to_date('3/10/22', 'MM/DD/RRRR'));
--Row 12
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1122634102,12,120,538,NULL,263,to_date('6/29/27', 'MM/DD/RRRR'));
--Row 13
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (6416147904,13,328,486,NULL,763,to_date('12/15/27', 'MM/DD/RRRR'));
--Row 14
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1288715099,14,867,401,NULL,911,to_date('8/27/27', 'MM/DD/RRRR'));
--Row 15
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (7341155833,15,698,179,5.10876E+15,514,to_date('10/12/29', 'MM/DD/RRRR'));
--Row 16
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3968416155,16,646,693,NULL,257,to_date('2/12/30', 'MM/DD/RRRR'));
--Row 17
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4492347526,17,913,480,NULL,368,to_date('12/24/25', 'MM/DD/RRRR'));
--Row 18
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (147415063,18,551,424,5.10876E+15,261,to_date('4/1/24', 'MM/DD/RRRR'));
--Row 19
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3372199669,19,820,263,NULL,381,to_date('4/18/21', 'MM/DD/RRRR'));
--Row 20
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9736824756,20,170,586,NULL,962,to_date('6/8/30', 'MM/DD/RRRR'));
--Row 21
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4411895730,21,857,226,NULL,611,to_date('12/4/26', 'MM/DD/RRRR'));
--Row 22
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (574649069,22,930,215,5.04838E+15,294,to_date('3/15/21', 'MM/DD/RRRR'));
--Row 23
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8764105253,23,619,477,NULL,702,to_date('5/3/22', 'MM/DD/RRRR'));
--Row 24
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (2774839122,24,351,176,NULL,567,to_date('11/7/21', 'MM/DD/RRRR'));
--Row 25
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (7372731070,25,956,666,NULL,444,to_date('8/6/30', 'MM/DD/RRRR'));
--Row 26
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9077871756,26,548,421,NULL,354,to_date('6/5/27', 'MM/DD/RRRR'));
--Row 27
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (2509504630,27,911,997,NULL,160,to_date('11/24/22', 'MM/DD/RRRR'));
--Row 28
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (6612238933,28,785,652,5.04837E+15,236,to_date('6/15/22', 'MM/DD/RRRR'));
--Row 29
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (6023931243,29,430,950,NULL,221,to_date('5/2/24', 'MM/DD/RRRR'));
--Row 30
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (2565397666,30,559,265,NULL,264,to_date('9/4/22', 'MM/DD/RRRR'));
--Row 31
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1616236353,31,589,426,NULL,432,to_date('8/29/29', 'MM/DD/RRRR'));
--Row 32
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (6871567860,32,100,618,5.04837E+15,204,to_date('4/22/21', 'MM/DD/RRRR'));
--Row 33
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9518240957,33,254,183,NULL,247,to_date('6/29/29', 'MM/DD/RRRR'));
--Row 34
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (7211301643,34,40,671,NULL,843,to_date('8/30/27', 'MM/DD/RRRR'));
--Row 35
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1222927195,35,275,136,NULL,675,to_date('12/1/23', 'MM/DD/RRRR'));
--Row 36
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4341040995,36,830,277,5.04837E+15,309,to_date('7/11/27', 'MM/DD/RRRR'));
--Row 37
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (6413294485,37,985,337,NULL,594,to_date('5/13/22', 'MM/DD/RRRR'));
--Row 38
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1695416260,38,750,245,NULL,722,to_date('2/21/29', 'MM/DD/RRRR'));
--Row 39
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1482774321,39,212,854,NULL,654,to_date('4/24/28', 'MM/DD/RRRR'));
--Row 40
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1305880641,40,364,975,NULL,897,to_date('3/22/26', 'MM/DD/RRRR'));
--Row 41
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (627884121,41,811,324,NULL,796,to_date('1/8/28', 'MM/DD/RRRR'));
--Row 42
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4870565250,42,214,358,NULL,689,to_date('6/26/30', 'MM/DD/RRRR'));
--Row 43
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1677548401,43,607,568,NULL,831,to_date('11/30/25', 'MM/DD/RRRR'));
--Row 44
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4967977537,44,446,450,NULL,879,to_date('9/28/28', 'MM/DD/RRRR'));
--Row 45
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3949503498,45,560,131,NULL,247,to_date('12/1/27', 'MM/DD/RRRR'));
--Row 46
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8700664170,46,165,643,5.10876E+15,405,to_date('6/8/23', 'MM/DD/RRRR'));
--Row 47
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (735366683,47,565,324,NULL,450,to_date('2/24/22', 'MM/DD/RRRR'));
--Row 48
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8775834170,48,47,747,5.04837E+15,575,to_date('8/5/30', 'MM/DD/RRRR'));
--Row 49
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4206444528,49,128,666,NULL,853,to_date('1/7/29', 'MM/DD/RRRR'));
--Row 50
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1449830587,50,572,206,NULL,246,to_date('1/15/21', 'MM/DD/RRRR'));
--Row 51
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8740079775,51,71,170,5.04838E+15,403,to_date('9/6/23', 'MM/DD/RRRR'));
--Row 52
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4790560198,52,846,867,5.10876E+15,740,to_date('12/4/21', 'MM/DD/RRRR'));
--Row 53
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3561938019,53,163,558,NULL,247,to_date('11/7/22', 'MM/DD/RRRR'));
--Row 54
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (278552668,54,18,401,NULL,593,to_date('11/22/29', 'MM/DD/RRRR'));
--Row 55
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (6302421438,55,881,802,NULL,485,to_date('4/13/28', 'MM/DD/RRRR'));
--Row 56
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3456448872,56,87,872,5.10875E+15,926,to_date('1/1/25', 'MM/DD/RRRR'));
--Row 57
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1652795227,57,496,529,NULL,518,to_date('9/2/28', 'MM/DD/RRRR'));
--Row 58
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9814431621,58,252,602,5.04837E+15,263,to_date('12/19/26', 'MM/DD/RRRR'));
--Row 59
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (6675210564,59,273,497,NULL,229,to_date('4/21/29', 'MM/DD/RRRR'));
--Row 60
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (6235656548,60,413,731,5.04837E+15,729,to_date('4/8/28', 'MM/DD/RRRR'));
--Row 61
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (2390391540,61,753,289,NULL,736,to_date('4/20/22', 'MM/DD/RRRR'));
--Row 62
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (2742820930,62,218,694,NULL,338,to_date('7/25/23', 'MM/DD/RRRR'));
--Row 63
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3494289867,63,549,804,NULL,156,to_date('3/27/25', 'MM/DD/RRRR'));
--Row 64
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (2140260279,64,50,861,NULL,813,to_date('2/24/23', 'MM/DD/RRRR'));
--Row 65
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8965080924,65,517,362,NULL,722,to_date('6/18/28', 'MM/DD/RRRR'));
--Row 66
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8633134020,66,615,261,NULL,692,to_date('8/7/24', 'MM/DD/RRRR'));
--Row 67
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8125404740,67,635,101,5.10876E+15,226,to_date('11/23/21', 'MM/DD/RRRR'));
--Row 68
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (583573169,68,830,248,NULL,254,to_date('3/27/26', 'MM/DD/RRRR'));
--Row 69
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (184094674,69,373,570,NULL,338,to_date('6/22/22', 'MM/DD/RRRR'));
--Row 70
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (2254450999,70,562,242,NULL,168,to_date('7/15/22', 'MM/DD/RRRR'));
--Row 71
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8815414886,71,663,330,NULL,763,to_date('6/8/25', 'MM/DD/RRRR'));
--Row 72
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (2964270910,72,661,859,NULL,126,to_date('3/19/27', 'MM/DD/RRRR'));
--Row 73
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4534022506,73,282,277,NULL,868,to_date('3/16/21', 'MM/DD/RRRR'));
--Row 74
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (2916379843,74,196,831,NULL,369,to_date('1/9/22', 'MM/DD/RRRR'));
--Row 75
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9278400300,75,993,739,5.04838E+15,163,to_date('5/5/28', 'MM/DD/RRRR'));
--Row 76
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4358692532,76,679,499,NULL,665,to_date('9/22/23', 'MM/DD/RRRR'));
--Row 77
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (7060043616,77,325,743,NULL,375,to_date('7/22/30', 'MM/DD/RRRR'));
--Row 78
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4991633648,78,894,402,NULL,698,to_date('11/9/22', 'MM/DD/RRRR'));
--Row 79
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3677561345,79,529,296,NULL,344,to_date('3/1/24', 'MM/DD/RRRR'));
--Row 80
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (7201879901,80,546,211,NULL,912,to_date('9/23/28', 'MM/DD/RRRR'));
--Row 81
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (6831168043,81,66,823,5.04838E+15,214,to_date('8/8/22', 'MM/DD/RRRR'));
--Row 82
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3376485003,82,519,164,NULL,464,to_date('12/19/21', 'MM/DD/RRRR'));
--Row 83
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8038437381,83,90,282,NULL,865,to_date('2/22/21', 'MM/DD/RRRR'));
--Row 84
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1875796622,84,474,409,NULL,918,to_date('7/28/26', 'MM/DD/RRRR'));
--Row 85
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (5575819752,85,361,133,NULL,169,to_date('1/14/22', 'MM/DD/RRRR'));
--Row 86
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (2141586518,86,389,743,NULL,466,to_date('5/14/29', 'MM/DD/RRRR'));
--Row 87
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4711116478,87,743,840,NULL,797,to_date('7/9/24', 'MM/DD/RRRR'));
--Row 88
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4226246454,88,86,283,NULL,355,to_date('11/6/22', 'MM/DD/RRRR'));
--Row 89
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3342443227,89,811,717,NULL,249,to_date('2/23/23', 'MM/DD/RRRR'));
--Row 90
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3168086118,90,349,833,NULL,378,to_date('11/28/29', 'MM/DD/RRRR'));
--Row 91
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8273204669,91,164,419,NULL,779,to_date('6/21/27', 'MM/DD/RRRR'));
--Row 92
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3903165921,92,731,362,5.04837E+15,919,to_date('6/30/24', 'MM/DD/RRRR'));
--Row 93
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9097807247,93,284,324,NULL,975,to_date('4/5/24', 'MM/DD/RRRR'));
--Row 94
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9021972654,94,513,453,5.10875E+15,438,to_date('9/10/23', 'MM/DD/RRRR'));
--Row 95
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3387507194,95,22,119,NULL,624,to_date('11/11/22', 'MM/DD/RRRR'));
--Row 96
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (116103582,96,181,236,NULL,405,to_date('3/7/24', 'MM/DD/RRRR'));
--Row 97
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (144445662,97,64,756,NULL,818,to_date('11/9/25', 'MM/DD/RRRR'));
--Row 98
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (7060273085,98,470,212,5.04838E+15,176,to_date('1/29/25', 'MM/DD/RRRR'));
--Row 99
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (2956152270,99,515,737,NULL,999,to_date('4/10/26', 'MM/DD/RRRR'));
--Row 100
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1491004924,100,999,703,5.04837E+15,372,to_date('4/3/23', 'MM/DD/RRRR'));
--Row 101
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (7739651923,101,945,358,NULL,135,to_date('5/10/21', 'MM/DD/RRRR'));
--Row 102
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8538254758,102,906,341,NULL,823,to_date('2/22/28', 'MM/DD/RRRR'));
--Row 103
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (7232897979,103,214,244,NULL,524,to_date('5/14/22', 'MM/DD/RRRR'));
--Row 104
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (5905715394,104,491,721,NULL,135,to_date('4/26/29', 'MM/DD/RRRR'));
--Row 105
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (900255226,105,848,439,NULL,657,to_date('11/22/25', 'MM/DD/RRRR'));
--Row 106
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8259009722,106,792,563,NULL,467,to_date('11/4/29', 'MM/DD/RRRR'));
--Row 107
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (457619252,107,71,586,5.04837E+15,274,to_date('5/10/22', 'MM/DD/RRRR'));
--Row 108
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8369296416,108,351,460,NULL,733,to_date('1/6/26', 'MM/DD/RRRR'));
--Row 109
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9824465871,109,462,921,NULL,689,to_date('1/18/27', 'MM/DD/RRRR'));
--Row 110
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (7438188485,110,387,290,5.10876E+15,124,to_date('1/4/22', 'MM/DD/RRRR'));
--Row 111
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4510796064,111,819,553,NULL,103,to_date('10/2/29', 'MM/DD/RRRR'));
--Row 112
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (120280299,112,836,727,NULL,496,to_date('4/13/26', 'MM/DD/RRRR'));
--Row 113
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (605521905,113,777,339,5.04837E+15,685,to_date('11/22/24', 'MM/DD/RRRR'));
--Row 114
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (7406860560,114,505,210,5.10875E+15,331,to_date('11/30/27', 'MM/DD/RRRR'));
--Row 115
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4452698026,115,982,812,NULL,191,to_date('11/16/24', 'MM/DD/RRRR'));
--Row 116
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (5714513509,116,244,288,NULL,766,to_date('8/28/30', 'MM/DD/RRRR'));
--Row 117
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4979980252,117,11,826,NULL,848,to_date('5/8/29', 'MM/DD/RRRR'));
--Row 118
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (289404924,118,726,618,NULL,644,to_date('4/19/27', 'MM/DD/RRRR'));
--Row 119
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (767533925,119,618,300,5.04837E+15,841,to_date('12/26/22', 'MM/DD/RRRR'));
--Row 120
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (2657995659,120,542,237,5.04837E+15,235,to_date('6/9/28', 'MM/DD/RRRR'));
--Row 121
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9741472137,121,224,244,NULL,209,to_date('3/15/21', 'MM/DD/RRRR'));
--Row 122
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9949592445,122,64,388,NULL,498,to_date('3/24/22', 'MM/DD/RRRR'));
--Row 123
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9997666879,123,699,854,5.04838E+15,461,to_date('8/31/22', 'MM/DD/RRRR'));
--Row 124
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (6946667743,124,645,212,NULL,651,to_date('7/17/27', 'MM/DD/RRRR'));
--Row 125
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4897075610,125,552,225,NULL,302,to_date('9/28/25', 'MM/DD/RRRR'));
--Row 126
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3515280820,126,527,837,NULL,148,to_date('5/1/21', 'MM/DD/RRRR'));
--Row 127
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (5396063165,127,215,363,5.04837E+15,577,to_date('6/18/24', 'MM/DD/RRRR'));
--Row 128
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (7731064727,128,476,851,NULL,393,to_date('7/3/23', 'MM/DD/RRRR'));
--Row 129
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (861544110,129,913,320,NULL,409,to_date('4/29/25', 'MM/DD/RRRR'));
--Row 130
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4063591506,130,547,999,NULL,390,to_date('8/28/27', 'MM/DD/RRRR'));
--Row 131
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3505281786,131,694,420,NULL,448,to_date('1/10/21', 'MM/DD/RRRR'));
--Row 132
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (5928242360,132,636,214,5.04838E+15,499,to_date('11/24/22', 'MM/DD/RRRR'));
--Row 133
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9419365166,133,453,538,NULL,398,to_date('9/9/22', 'MM/DD/RRRR'));
--Row 134
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1413699324,134,386,810,5.04837E+15,274,to_date('9/28/25', 'MM/DD/RRRR'));
--Row 135
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (898056020,135,837,401,NULL,653,to_date('7/23/25', 'MM/DD/RRRR'));
--Row 136
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9810996314,136,232,572,5.04838E+15,399,to_date('8/11/27', 'MM/DD/RRRR'));
--Row 137
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1583624821,137,353,648,NULL,852,to_date('9/5/23', 'MM/DD/RRRR'));
--Row 138
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8273012379,138,123,329,5.10875E+15,660,to_date('2/3/24', 'MM/DD/RRRR'));
--Row 139
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (689365608,139,323,676,NULL,793,to_date('10/10/23', 'MM/DD/RRRR'));
--Row 140
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (722265050,140,95,578,NULL,358,to_date('1/8/23', 'MM/DD/RRRR'));
--Row 141
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4318040593,141,315,100,NULL,103,to_date('7/8/26', 'MM/DD/RRRR'));
--Row 142
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (6219799429,142,161,388,NULL,133,to_date('11/30/24', 'MM/DD/RRRR'));
--Row 143
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1839719893,143,568,166,NULL,306,to_date('3/22/28', 'MM/DD/RRRR'));
--Row 144
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (6561695704,144,182,992,NULL,322,to_date('11/22/30', 'MM/DD/RRRR'));
--Row 145
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (2277975249,145,535,873,NULL,152,to_date('10/27/30', 'MM/DD/RRRR'));
--Row 146
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (2111611751,146,461,692,NULL,185,to_date('5/16/23', 'MM/DD/RRRR'));
--Row 147
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3124099559,147,543,376,NULL,831,to_date('3/9/27', 'MM/DD/RRRR'));
--Row 148
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9478702211,148,104,723,NULL,381,to_date('1/7/23', 'MM/DD/RRRR'));
--Row 149
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (7958175337,149,595,936,NULL,590,to_date('10/10/21', 'MM/DD/RRRR'));
--Row 150
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4363709022,150,296,327,NULL,365,to_date('10/27/21', 'MM/DD/RRRR'));
--Row 151
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9238828008,151,154,521,NULL,561,to_date('9/30/25', 'MM/DD/RRRR'));
--Row 152
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (5907760664,152,372,795,NULL,580,to_date('5/11/26', 'MM/DD/RRRR'));
--Row 153
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3718872544,153,944,343,NULL,145,to_date('5/6/22', 'MM/DD/RRRR'));
--Row 154
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4400376648,154,199,308,NULL,718,to_date('12/21/28', 'MM/DD/RRRR'));
--Row 155
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8667490067,155,273,625,5.10876E+15,117,to_date('4/3/27', 'MM/DD/RRRR'));
--Row 156
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1211492524,156,197,431,NULL,337,to_date('10/9/29', 'MM/DD/RRRR'));
--Row 157
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9239972242,157,156,489,5.10876E+15,724,to_date('10/6/27', 'MM/DD/RRRR'));
--Row 158
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8581370381,158,553,959,NULL,805,to_date('8/9/28', 'MM/DD/RRRR'));
--Row 159
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (976237423,159,78,783,NULL,173,to_date('12/1/28', 'MM/DD/RRRR'));
--Row 160
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (239514580,160,339,194,NULL,636,to_date('7/10/27', 'MM/DD/RRRR'));
--Row 161
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9679551016,161,148,316,NULL,800,to_date('10/29/29', 'MM/DD/RRRR'));
--Row 162
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (2348598469,162,708,346,NULL,540,to_date('7/7/30', 'MM/DD/RRRR'));
--Row 163
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4003474252,163,511,105,NULL,452,to_date('7/22/25', 'MM/DD/RRRR'));
--Row 164
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (2974073387,164,444,448,NULL,363,to_date('7/12/28', 'MM/DD/RRRR'));
--Row 165
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3130373489,165,55,958,NULL,128,to_date('8/5/26', 'MM/DD/RRRR'));
--Row 166
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9260411955,166,331,431,NULL,905,to_date('12/4/28', 'MM/DD/RRRR'));
--Row 167
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (7619466789,167,540,873,5.10875E+15,787,to_date('12/17/21', 'MM/DD/RRRR'));
--Row 168
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (993679226,168,692,241,NULL,592,to_date('8/28/22', 'MM/DD/RRRR'));
--Row 169
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4833067242,169,932,507,NULL,186,to_date('5/2/27', 'MM/DD/RRRR'));
--Row 170
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4974881604,170,697,623,NULL,250,to_date('5/1/30', 'MM/DD/RRRR'));
--Row 171
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (2369371994,171,968,240,NULL,254,to_date('8/15/21', 'MM/DD/RRRR'));
--Row 172
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3902830018,172,555,579,NULL,254,to_date('11/14/26', 'MM/DD/RRRR'));
--Row 173
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8958103884,173,31,503,NULL,992,to_date('1/29/22', 'MM/DD/RRRR'));
--Row 174
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8328319454,174,492,232,5.04838E+15,922,to_date('2/12/21', 'MM/DD/RRRR'));
--Row 175
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (4288367212,175,610,987,NULL,676,to_date('7/19/26', 'MM/DD/RRRR'));
--Row 176
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8292755276,176,711,657,NULL,979,to_date('8/9/21', 'MM/DD/RRRR'));
--Row 177
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (2473369151,177,924,818,5.04838E+15,961,to_date('12/25/28', 'MM/DD/RRRR'));
--Row 178
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (2050159595,178,472,167,NULL,109,to_date('1/7/24', 'MM/DD/RRRR'));
--Row 179
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (8892846329,179,60,737,NULL,326,to_date('12/28/29', 'MM/DD/RRRR'));
--Row 180
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1287721095,180,383,990,NULL,545,to_date('8/9/21', 'MM/DD/RRRR'));
--Row 181
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1192915429,181,941,213,NULL,137,to_date('8/30/23', 'MM/DD/RRRR'));
--Row 182
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (960477055,182,708,451,NULL,510,to_date('4/19/22', 'MM/DD/RRRR'));
--Row 183
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (129483702,183,381,948,NULL,183,to_date('8/5/29', 'MM/DD/RRRR'));
--Row 184
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1197932216,184,418,820,NULL,897,to_date('12/7/26', 'MM/DD/RRRR'));
--Row 185
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (7694908998,185,751,581,5.04838E+15,637,to_date('11/20/24', 'MM/DD/RRRR'));
--Row 186
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9507421882,186,566,569,5.04837E+15,413,to_date('1/1/30', 'MM/DD/RRRR'));
--Row 187
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (5526784339,187,578,923,NULL,958,to_date('1/12/24', 'MM/DD/RRRR'));
--Row 188
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (848175654,188,824,767,5.04838E+15,838,to_date('10/27/27', 'MM/DD/RRRR'));
--Row 189
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (2786812682,189,2,702,NULL,647,to_date('6/29/29', 'MM/DD/RRRR'));
--Row 190
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (7487015890,190,869,955,5.04838E+15,497,to_date('8/6/22', 'MM/DD/RRRR'));
--Row 191
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3501783825,191,176,288,5.10875E+15,655,to_date('1/26/30', 'MM/DD/RRRR'));
--Row 192
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1861753985,192,180,967,NULL,811,to_date('2/23/24', 'MM/DD/RRRR'));
--Row 193
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1458275531,193,824,528,NULL,737,to_date('4/28/25', 'MM/DD/RRRR'));
--Row 194
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (902163787,194,426,915,5.10875E+15,266,to_date('11/8/24', 'MM/DD/RRRR'));
--Row 195
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (7764010006,195,614,446,NULL,523,to_date('1/27/22', 'MM/DD/RRRR'));
--Row 196
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (1404931570,196,157,208,NULL,149,to_date('1/1/27', 'MM/DD/RRRR'));
--Row 197
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (6813095439,197,452,787,5.10875E+15,233,to_date('1/15/23', 'MM/DD/RRRR'));
--Row 198
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (9630232456,198,179,636,5.04837E+15,904,to_date('4/23/23', 'MM/DD/RRRR'));
--Row 199
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (3715192941,199,302,471,NULL,914,to_date('12/25/24', 'MM/DD/RRRR'));
--Row 200
INSERT INTO MBTA_CHARLIE (CHARLIEID, PASSENGERID, BALANCE, TRANCHEID, CARDNUMBER, CVVNO, EXPIRATIONDATE) VALUES (192255495,200,942,864,NULL,678,to_date('5/14/29', 'MM/DD/RRRR'));


----------------------------------------------------------------------------------------
--INSERT SCRIPTS FOR MBTA_TRANSACTION
----------------------------------------------------------------------------------------

INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (720,1,55,5000);
--Row 2
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (583,2,92,5001);
--Row 3
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (368,3,95,5002);
--Row 4
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (698,4,74,5003);
--Row 5
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (934,5,5,5004);
--Row 6
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (820,6,55,5005);
--Row 7
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (289,7,37,5006);
--Row 8
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (209,8,69,5007);
--Row 9
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (460,9,39,5008);
--Row 10
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (662,10,6,5009);
--Row 11
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (259,11,59,5010);
--Row 12
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (538,12,37,5011);
--Row 13
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (486,13,68,5012);
--Row 14
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (401,14,32,5013);
--Row 15
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (179,15,99,5014);
--Row 16
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (693,16,1,5015);
--Row 17
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (480,17,88,5016);
--Row 18
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (424,18,18,5017);
--Row 19
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (263,19,90,5018);
--Row 20
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (586,20,61,5019);
--Row 21
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (226,21,86,5020);
--Row 22
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (215,22,1,5021);
--Row 23
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (477,23,35,5022);
--Row 24
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (176,24,35,5023);
--Row 25
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (666,25,75,5024);
--Row 26
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (421,26,99,5025);
--Row 27
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (997,27,59,5026);
--Row 28
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (652,28,30,5027);
--Row 29
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (950,29,30,5028);
--Row 30
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (265,30,33,5029);
--Row 31
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (426,31,4,5030);
--Row 32
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (618,32,74,5031);
--Row 33
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (183,33,80,5032);
--Row 34
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (671,34,27,5033);
--Row 35
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (136,35,44,5034);
--Row 36
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (277,36,21,5035);
--Row 37
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (337,37,66,5036);
--Row 38
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (245,38,53,5037);
--Row 39
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (854,39,5,5038);
--Row 40
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (975,40,87,5039);
--Row 41
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (324,41,47,5040);
--Row 42
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (358,42,51,5041);
--Row 43
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (568,43,31,5042);
--Row 44
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (450,44,75,5043);
--Row 45
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (131,45,70,5044);
--Row 46
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (643,46,68,5045);
--Row 47
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (324,47,100,5046);
--Row 48
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (747,48,52,5047);
--Row 49
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (666,49,92,5048);
--Row 50
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (206,50,4,5049);
--Row 51
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (170,51,2,5050);
--Row 52
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (867,52,43,5051);
--Row 53
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (558,53,81,5052);
--Row 54
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (401,54,38,5053);
--Row 55
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (802,55,93,5054);
--Row 56
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (872,56,79,5055);
--Row 57
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (529,57,49,5056);
--Row 58
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (602,58,77,5057);
--Row 59
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (497,59,85,5058);
--Row 60
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (731,60,29,5059);
--Row 61
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (289,61,1,5060);
--Row 62
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (694,62,84,5061);
--Row 63
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (804,63,3,5062);
--Row 64
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (861,64,5,5063);
--Row 65
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (362,65,23,5064);
--Row 66
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (261,66,68,5065);
--Row 67
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (101,67,10,5066);
--Row 68
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (248,68,23,5067);
--Row 69
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (570,69,44,5068);
--Row 70
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (242,70,85,5069);
--Row 71
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (330,71,43,5070);
--Row 72
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (859,72,1,5071);
--Row 73
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (277,73,40,5072);
--Row 74
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (831,74,1,5073);
--Row 75
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (739,75,87,5074);
--Row 76
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (499,76,9,5075);
--Row 77
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (743,77,47,5076);
--Row 78
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (402,78,20,5077);
--Row 79
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (296,79,32,5078);
--Row 80
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (211,80,2,5079);
--Row 81
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (823,81,46,5080);
--Row 82
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (164,82,40,5081);
--Row 83
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (282,83,34,5082);
--Row 84
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (409,84,6,5083);
--Row 85
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (133,85,41,5084);
--Row 86
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (743,86,78,5085);
--Row 87
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (840,87,1,5086);
--Row 88
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (283,88,45,5087);
--Row 89
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (717,89,27,5088);
--Row 90
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (833,90,46,5089);
--Row 91
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (419,91,32,5090);
--Row 92
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (362,92,72,5091);
--Row 93
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (324,93,45,5092);
--Row 94
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (453,94,54,5093);
--Row 95
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (119,95,94,5094);
--Row 96
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (236,96,47,5095);
--Row 97
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (756,97,17,5096);
--Row 98
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (212,98,99,5097);
--Row 99
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (737,99,47,5098);
--Row 100
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (703,100,51,5099);
--Row 101
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (358,101,57,5100);
--Row 102
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (341,102,40,5101);
--Row 103
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (244,103,80,5102);
--Row 104
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (721,104,89,5103);
--Row 105
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (439,105,82,5104);
--Row 106
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (563,106,92,5105);
--Row 107
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (586,107,75,5106);
--Row 108
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (460,108,70,5107);
--Row 109
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (921,109,22,5108);
--Row 110
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (290,110,12,5109);
--Row 111
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (553,111,39,5110);
--Row 112
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (727,112,4,5111);
--Row 113
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (339,113,53,5112);
--Row 114
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (210,114,44,5113);
--Row 115
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (812,115,28,5114);
--Row 116
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (288,116,1,5115);
--Row 117
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (826,117,40,5116);
--Row 118
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (618,118,41,5117);
--Row 119
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (300,119,71,5118);
--Row 120
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (237,120,39,5119);
--Row 121
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (244,121,62,5120);
--Row 122
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (388,122,62,5121);
--Row 123
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (854,123,80,5122);
--Row 124
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (212,124,19,5123);
--Row 125
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (225,125,93,5124);
--Row 126
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (837,126,91,5125);
--Row 127
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (363,127,46,5126);
--Row 128
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (851,128,12,5127);
--Row 129
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (320,129,26,5128);
--Row 130
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (999,130,65,5129);
--Row 131
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (420,131,98,5130);
--Row 132
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (214,132,24,5131);
--Row 133
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (538,133,13,5132);
--Row 134
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (810,134,44,5133);
--Row 135
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (401,135,99,5134);
--Row 136
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (572,136,13,5135);
--Row 137
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (648,137,60,5136);
--Row 138
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (329,138,24,5137);
--Row 139
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (676,139,45,5138);
--Row 140
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (578,140,47,5139);
--Row 141
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (100,141,10,5140);
--Row 142
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (388,142,44,5141);
--Row 143
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (166,143,33,5142);
--Row 144
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (992,144,34,5143);
--Row 145
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (873,145,43,5144);
--Row 146
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (692,146,36,5145);
--Row 147
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (376,147,37,5146);
--Row 148
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (723,148,46,5147);
--Row 149
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (936,149,28,5148);
--Row 150
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (327,150,4,5149);
--Row 151
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (521,151,56,5150);
--Row 152
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (795,152,1,5151);
--Row 153
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (343,153,25,5152);
--Row 154
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (308,154,86,5153);
--Row 155
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (625,155,19,5154);
--Row 156
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (431,156,6,5155);
--Row 157
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (489,157,5,5156);
--Row 158
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (959,158,16,5157);
--Row 159
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (783,159,30,5158);
--Row 160
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (194,160,58,5159);
--Row 161
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (316,161,11,5160);
--Row 162
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (346,162,75,5161);
--Row 163
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (105,163,61,5162);
--Row 164
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (448,164,77,5163);
--Row 165
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (958,165,37,5164);
--Row 166
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (431,166,34,5165);
--Row 167
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (873,167,64,5166);
--Row 168
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (241,168,46,5167);
--Row 169
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (507,169,27,5168);
--Row 170
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (623,170,98,5169);
--Row 171
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (240,171,19,5170);
--Row 172
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (579,172,54,5171);
--Row 173
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (503,173,66,5172);
--Row 174
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (232,174,39,5173);
--Row 175
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (987,175,82,5174);
--Row 176
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (657,176,1,5175);
--Row 177
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (818,177,64,5176);
--Row 178
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (167,178,84,5177);
--Row 179
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (737,179,91,5178);
--Row 180
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (990,180,95,5179);
--Row 181
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (213,181,20,5180);
--Row 182
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (451,182,100,5181);
--Row 183
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (948,183,95,5182);
--Row 184
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (820,184,50,5183);
--Row 185
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (581,185,80,5184);
--Row 186
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (569,186,78,5185);
--Row 187
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (923,187,11,5186);
--Row 188
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (767,188,72,5187);
--Row 189
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (702,189,50,5188);
--Row 190
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (955,190,66,5189);
--Row 191
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (288,191,88,5190);
--Row 192
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (967,192,63,5191);
--Row 193
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (528,193,78,5192);
--Row 194
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (915,194,5,5193);
--Row 195
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (446,195,41,5194);
--Row 196
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (208,196,93,5195);
--Row 197
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (787,197,67,5196);
--Row 198
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (636,198,66,5197);
--Row 199
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (471,199,50,5198);
--Row 200
INSERT INTO MBTA_TRANSACTION (TRANSACTIONID, PASSENGERID, AMOUNT, TRANCHEID) VALUES (864,200,44,5199);

----------------------------------------------------------------------------------------
--INSERT SCRIPTS FOR MBTA_TRAININFO
----------------------------------------------------------------------------------------

insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (1, 94, 1993, '02-Oct-2021', 63, 45);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (2, 61, 1994, '14-Sep-2021', 98, 180);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (3, 61, 1992, '30-Nov-2021', 53, 115);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (4, 12, 2007, '25-Jan-2021', 50, 139);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (5, 78, 2011, '14-Feb-2021', 100, 61);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (6, 14, 1999, '29-Sep-2021', 76, 185);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (7, 27, 1999, '29-Jan-2021', 77, 152);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (8, 7, 1999, '09-Jul-2021', 93, 170);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (9, 60, 1984, '15-Apr-2021', 73, 3);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (10, 91, 2009, '25-Jun-2021', 84, 187);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (11, 38, 2007, '30-Aug-2021', 63, 90);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (12, 5, 2005, '23-Aug-2021', 67, 200);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (13, 76, 1993, '30-Aug-2021', 68, 24);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (14, 61, 2001, '21-Feb-2021', 57, 121);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (15, 93, 1997, '23-Mar-2021', 59, 1);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (16, 54, 2005, '17-Sep-2021', 72, 166);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (17, 78, 1997, '18-Jun-2021', 92, 91);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (18, 40, 1994, '30-Jan-2021', 89, 66);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (19, 51, 2007, '09-Oct-2021', 50, 65);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (20, 91, 2010, '24-Apr-2021', 54, 133);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (21, 59, 1994, '26-Mar-2021', 90, 160);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (22, 56, 1995, '03-Aug-2021', 82, 70);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (23, 39, 1996, '15-Mar-2021', 60, 139);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (24, 7, 1991, '05-Apr-2021', 88, 184);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (25, 23, 2012, '10-May-2021', 78, 79);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (26, 19, 2012, '23-Feb-2021', 60, 71);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (27, 17, 1985, '19-May-2021', 65, 62);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (28, 41, 2013, '11-Sep-2021', 51, 108);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (29, 43, 2012, '03-Dec-2021', 97, 73);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (30, 50, 2011, '07-Mar-2021', 63, 154);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (31, 58, 1999, '27-Jan-2021', 79, 32);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (32, 50, 2005, '17-Feb-2021', 66, 105);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (33, 26, 1998, '18-Jul-2021', 86, 144);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (34, 81, 1994, '11-Nov-2021', 89, 197);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (35, 64, 2008, '30-Aug-2021', 80, 191);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (36, 48, 2002, '11-Oct-2021', 96, 52);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (37, 27, 1995, '13-Feb-2021', 52, 123);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (38, 72, 1997, '23-Nov-2021', 96, 154);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (39, 78, 2009, '06-Jan-2021', 93, 152);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (40, 11, 2001, '04-Aug-2021', 75, 130);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (41, 34, 2010, '22-Jan-2021', 64, 99);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (42, 19, 1999, '16-Oct-2021', 61, 168);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (43, 47, 2012, '26-Oct-2021', 55, 134);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (44, 36, 1986, '29-Apr-2021', 79, 60);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (45, 52, 2003, '02-Sep-2021', 90, 92);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (46, 64, 2012, '19-Dec-2020', 99, 177);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (47, 70, 2004, '02-Dec-2021', 63, 49);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (48, 99, 1997, '02-Sep-2021', 70, 100);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (49, 45, 1995, '13-Nov-2021', 52, 43);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (50, 63, 1996, '24-Oct-2021', 83, 158);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (51, 4, 2002, '02-Jun-2021', 98, 41);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (52, 62, 2006, '07-Sep-2021', 51, 132);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (53, 67, 2003, '20-Jun-2021', 83, 94);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (54, 20, 2005, '01-Aug-2021', 58, 170);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (55, 100, 1989, '17-Apr-2021', 73, 167);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (56, 15, 2006, '19-Jan-2021', 84, 122);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (57, 54, 1995, '25-Aug-2021', 81, 105);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (58, 27, 2001, '23-May-2021', 80, 5);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (59, 39, 2009, '05-Dec-2021', 53, 74);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (60, 87, 2012, '05-Jan-2021', 53, 45);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (61, 7, 2011, '14-Sep-2021', 60, 131);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (62, 78, 1987, '27-Dec-2020', 88, 197);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (63, 60, 2008, '02-Aug-2021', 64, 150);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (64, 36, 1995, '01-Oct-2021', 72, 144);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (65, 91, 2006, '08-Feb-2021', 91, 34);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (66, 47, 2003, '09-Jul-2021', 92, 200);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (67, 53, 1995, '05-May-2021', 52, 118);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (68, 65, 2000, '30-Sep-2021', 52, 85);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (69, 38, 2003, '12-Jul-2021', 51, 103);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (70, 85, 2008, '07-Jul-2021', 62, 179);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (71, 10, 2007, '20-Mar-2021', 58, 96);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (72, 2, 1996, '30-Mar-2021', 93, 57);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (73, 100, 2006, '18-Sep-2021', 71, 84);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (74, 69, 2011, '30-Jan-2021', 77, 85);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (75, 90, 1992, '01-Jul-2021', 67, 11);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (76, 21, 2007, '28-Jun-2021', 71, 2);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (77, 84, 2009, '30-Jan-2021', 54, 159);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (78, 53, 2002, '26-Feb-2021', 54, 51);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (79, 61, 2010, '25-May-2021', 85, 124);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (80, 22, 1997, '27-Feb-2021', 90, 39);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (81, 19, 1999, '24-Sep-2021', 80, 168);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (82, 94, 2011, '03-Jun-2021', 51, 4);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (83, 54, 2002, '11-Apr-2021', 98, 168);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (84, 5, 1994, '05-Jul-2021', 75, 77);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (85, 38, 1991, '20-Jun-2021', 86, 73);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (86, 19, 1999, '14-Feb-2021', 81, 198);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (87, 95, 1997, '02-Aug-2021', 61, 165);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (88, 81, 1994, '13-Dec-2021', 67, 30);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (89, 38, 1987, '13-Sep-2021', 88, 130);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (90, 38, 2012, '28-Mar-2021', 85, 140);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (91, 8, 2010, '21-Oct-2021', 77, 78);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (92, 32, 1999, '23-Feb-2021', 66, 40);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (93, 39, 1993, '02-Mar-2021', 77, 138);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (94, 94, 1997, '26-Nov-2021', 79, 165);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (95, 93, 1995, '10-Jul-2021', 60, 138);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (96, 90, 1986, '04-Apr-2021', 92, 86);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (97, 21, 1992, '03-Mar-2021', 78, 190);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (98, 2, 2003, '22-Mar-2021', 80, 102);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (99, 58, 1984, '25-Sep-2021', 79, 98);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (100, 85, 2008, '02-Jul-2021', 82, 187);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (101, 35, 1993, '05-Feb-2021', 71, 40);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (102, 71, 1994, '31-Jan-2021', 77, 119);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (103, 70, 2007, '06-Jun-2021', 59, 180);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (104, 17, 1993, '15-Aug-2021', 73, 133);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (105, 93, 2005, '08-Dec-2021', 87, 157);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (106, 94, 1985, '13-Nov-2021', 89, 31);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (107, 35, 2007, '04-Oct-2021', 63, 39);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (108, 13, 2001, '02-Jan-2021', 94, 194);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (109, 4, 2012, '23-Aug-2021', 100, 129);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (110, 89, 1993, '19-Dec-2020', 85, 108);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (111, 28, 1992, '02-Feb-2021', 68, 138);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (112, 28, 2010, '01-Aug-2021', 52, 198);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (113, 54, 2011, '07-Jul-2021', 89, 15);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (114, 93, 1995, '10-Oct-2021', 86, 190);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (115, 25, 2013, '18-Dec-2020', 51, 143);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (116, 59, 2004, '21-Dec-2020', 71, 137);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (117, 17, 2001, '08-Jul-2021', 91, 182);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (118, 64, 2004, '13-Sep-2021', 66, 127);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (119, 13, 2006, '07-May-2021', 96, 79);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (120, 71, 1998, '19-Jul-2021', 68, 177);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (121, 17, 2008, '27-May-2021', 57, 33);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (122, 26, 2003, '24-Jan-2021', 85, 81);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (123, 54, 1994, '04-Aug-2021', 81, 189);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (124, 7, 2010, '01-Nov-2021', 70, 81);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (125, 75, 2007, '13-Oct-2021', 82, 196);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (126, 43, 1994, '31-Jul-2021', 50, 31);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (127, 17, 2006, '12-May-2021', 78, 74);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (128, 47, 1993, '05-Jul-2021', 66, 2);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (129, 96, 1991, '02-Mar-2021', 93, 112);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (130, 17, 2012, '31-Mar-2021', 51, 96);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (131, 53, 1995, '30-Apr-2021', 50, 114);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (132, 96, 1994, '02-Feb-2021', 66, 11);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (133, 42, 2011, '04-Apr-2021', 69, 101);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (134, 86, 2007, '28-Feb-2021', 64, 84);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (135, 83, 2012, '21-Dec-2020', 99, 186);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (136, 94, 1992, '29-Oct-2021', 66, 2);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (137, 2, 2009, '12-Mar-2021', 68, 123);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (138, 82, 1995, '02-Aug-2021', 57, 43);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (139, 51, 1999, '25-Apr-2021', 94, 86);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (140, 31, 1987, '07-Jun-2021', 77, 29);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (141, 41, 2011, '26-Sep-2021', 86, 190);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (142, 5, 1997, '29-Apr-2021', 55, 162);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (143, 3, 2011, '06-Oct-2021', 68, 165);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (144, 30, 1989, '27-Dec-2020', 55, 86);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (145, 95, 2005, '03-Jun-2021', 56, 16);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (146, 98, 2009, '01-Apr-2021', 51, 156);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (147, 33, 2008, '05-Jan-2021', 63, 166);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (148, 15, 2002, '28-Apr-2021', 92, 2);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (149, 14, 1993, '01-Dec-2021', 51, 16);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (150, 13, 2004, '09-Jul-2021', 85, 25);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (151, 86, 1987, '15-Jul-2021', 84, 108);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (152, 55, 1993, '27-Jan-2021', 62, 100);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (153, 56, 2011, '26-Jan-2021', 68, 130);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (154, 34, 2008, '21-Apr-2021', 91, 42);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (155, 52, 2003, '15-Jan-2021', 89, 186);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (156, 98, 2002, '26-Mar-2021', 95, 191);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (157, 84, 2008, '01-May-2021', 89, 4);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (158, 62, 2006, '28-Jan-2021', 94, 99);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (159, 63, 1994, '23-Feb-2021', 97, 96);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (160, 16, 2011, '28-Aug-2021', 77, 70);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (161, 99, 2012, '19-Aug-2021', 78, 56);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (162, 65, 1984, '17-Dec-2020', 69, 112);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (163, 44, 2009, '14-Apr-2021', 69, 65);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (164, 28, 2006, '31-May-2021', 50, 158);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (165, 7, 2009, '06-Nov-2021', 87, 200);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (166, 82, 1991, '06-Sep-2021', 57, 172);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (167, 34, 1999, '04-Apr-2021', 63, 144);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (168, 30, 2007, '16-Mar-2021', 89, 86);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (169, 29, 2004, '08-Aug-2021', 73, 66);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (170, 38, 1994, '16-Oct-2021', 80, 79);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (171, 85, 1999, '02-Jun-2021', 50, 154);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (172, 8, 2004, '15-Apr-2021', 50, 41);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (173, 43, 1995, '25-Nov-2021', 79, 93);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (174, 34, 2012, '25-Sep-2021', 87, 131);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (175, 14, 1995, '16-Sep-2021', 60, 82);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (176, 54, 2000, '25-Feb-2021', 79, 15);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (177, 33, 1994, '13-May-2021', 75, 89);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (178, 13, 2005, '30-Dec-2020', 54, 126);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (179, 35, 2007, '27-Oct-2021', 76, 4);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (180, 99, 2011, '09-Dec-2021', 77, 167);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (181, 91, 1988, '09-Oct-2021', 98, 44);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (182, 95, 1995, '20-Jan-2021', 100, 5);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (183, 94, 1992, '07-Apr-2021', 65, 14);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (184, 88, 1990, '27-May-2021', 67, 4);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (185, 43, 1996, '07-Aug-2021', 56, 176);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (186, 83, 1995, '29-Jan-2021', 79, 101);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (187, 38, 1993, '15-Aug-2021', 81, 51);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (188, 70, 2005, '03-Oct-2021', 67, 140);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (189, 12, 2001, '05-Dec-2021', 85, 10);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (190, 77, 1993, '24-Mar-2021', 84, 30);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (191, 80, 1965, '05-Sep-2021', 77, 141);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (192, 51, 2007, '21-Aug-2021', 84, 171);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (193, 29, 1992, '22-Jul-2021', 93, 61);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (194, 88, 2000, '14-Jan-2021', 83, 193);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (195, 39, 2006, '24-Aug-2021', 86, 93);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (196, 44, 2003, '08-Aug-2021', 85, 98);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (197, 43, 2002, '25-Dec-2020', 70, 62);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (198, 95, 1986, '17-Feb-2021', 93, 155);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (199, 11, 2011, '22-Feb-2021', 58, 175);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (200, 38, 2012, '31-Mar-2021', 79, 47);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (201, 84, 2001, '08-Mar-2021', 79, 48);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (202, 86, 2000, '23-May-2021', 61, 154);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (203, 68, 1997, '06-Apr-2021', 74, 17);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (204, 83, 1996, '14-Aug-2021', 54, 147);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (205, 56, 2009, '16-Aug-2021', 87, 134);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (206, 7, 1998, '01-Sep-2021', 90, 88);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (207, 44, 2004, '23-Apr-2021', 56, 154);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (208, 6, 1990, '04-Dec-2021', 73, 122);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (209, 9, 1967, '17-Sep-2021', 61, 153);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (210, 51, 2010, '04-Feb-2021', 90, 68);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (211, 34, 2008, '10-Jul-2021', 93, 135);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (212, 24, 2000, '11-Nov-2021', 66, 12);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (213, 90, 2001, '08-Mar-2021', 63, 176);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (214, 69, 2001, '22-Dec-2020', 54, 30);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (215, 63, 1993, '26-Sep-2021', 72, 58);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (216, 12, 1983, '17-Dec-2020', 71, 78);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (217, 60, 2004, '30-Apr-2021', 98, 146);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (218, 93, 2002, '06-Jul-2021', 82, 130);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (219, 25, 2001, '13-Jan-2021', 51, 153);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (220, 57, 2007, '25-Apr-2021', 68, 167);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (221, 36, 2001, '24-Jul-2021', 87, 173);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (222, 20, 2010, '14-Jun-2021', 69, 141);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (223, 93, 2007, '08-Oct-2021', 100, 112);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (224, 51, 2011, '14-Dec-2021', 86, 191);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (225, 16, 1986, '21-Jul-2021', 97, 170);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (226, 70, 2004, '02-May-2021', 91, 30);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (227, 66, 2010, '22-Dec-2020', 96, 118);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (228, 59, 2002, '15-Jan-2021', 53, 95);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (229, 21, 2011, '11-Sep-2021', 83, 85);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (230, 48, 2000, '02-Feb-2021', 75, 157);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (231, 49, 2000, '01-Nov-2021', 96, 196);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (232, 9, 1999, '17-Nov-2021', 71, 65);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (233, 98, 1990, '04-Mar-2021', 70, 60);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (234, 78, 2000, '14-Apr-2021', 53, 106);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (235, 32, 2011, '16-Oct-2021', 98, 31);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (236, 51, 1992, '05-Oct-2021', 89, 96);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (237, 23, 2003, '09-Jul-2021', 83, 68);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (238, 41, 2001, '26-May-2021', 89, 53);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (239, 28, 2010, '20-May-2021', 77, 200);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (240, 37, 2002, '08-Aug-2021', 87, 102);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (241, 1, 1994, '16-Apr-2021', 71, 26);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (242, 8, 1996, '21-Sep-2021', 88, 60);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (243, 23, 2010, '22-Jun-2021', 74, 177);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (244, 73, 1992, '06-Nov-2021', 63, 161);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (245, 16, 2011, '30-Jun-2021', 67, 180);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (246, 77, 2011, '15-Oct-2021', 80, 169);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (247, 28, 2006, '01-Jan-2021', 89, 142);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (248, 2, 2000, '04-Sep-2021', 60, 173);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (249, 45, 2006, '09-Mar-2021', 89, 70);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (250, 68, 2000, '06-Apr-2021', 50, 110);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (251, 16, 2009, '09-Apr-2021', 55, 193);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (252, 64, 2001, '28-Mar-2021', 72, 76);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (253, 94, 2005, '22-Oct-2021', 90, 98);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (254, 57, 1995, '19-Sep-2021', 92, 164);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (255, 48, 1994, '23-May-2021', 50, 136);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (256, 82, 1993, '06-Aug-2021', 79, 176);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (257, 70, 2006, '19-Sep-2021', 57, 193);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (258, 55, 1987, '25-Mar-2021', 69, 21);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (259, 75, 1992, '16-Feb-2021', 73, 131);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (260, 87, 2002, '07-Jun-2021', 67, 59);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (261, 40, 2001, '31-Dec-2020', 82, 186);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (262, 59, 2012, '24-Apr-2021', 84, 187);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (263, 25, 1998, '03-Jan-2021', 60, 177);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (264, 95, 1995, '30-Jun-2021', 82, 111);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (265, 31, 2001, '16-Jul-2021', 61, 84);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (266, 87, 2007, '29-Mar-2021', 66, 139);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (267, 70, 1987, '20-Apr-2021', 83, 19);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (268, 17, 2009, '21-Jun-2021', 79, 181);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (269, 59, 2008, '12-Sep-2021', 73, 114);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (270, 51, 2001, '29-Jul-2021', 59, 87);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (271, 72, 2003, '09-Sep-2021', 50, 186);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (272, 91, 2009, '06-Sep-2021', 71, 87);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (273, 2, 1999, '07-Aug-2021', 60, 170);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (274, 65, 1997, '19-Jul-2021', 94, 17);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (275, 78, 2010, '20-May-2021', 75, 198);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (276, 71, 1998, '25-May-2021', 94, 164);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (277, 45, 1997, '05-Jan-2021', 55, 65);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (278, 2, 1993, '02-Feb-2021', 60, 43);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (279, 90, 1994, '06-Aug-2021', 88, 85);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (280, 50, 1996, '30-Jul-2021', 70, 88);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (281, 20, 2009, '27-May-2021', 98, 182);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (282, 64, 2010, '31-Mar-2021', 69, 171);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (283, 39, 2006, '21-Oct-2021', 52, 4);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (284, 52, 2004, '19-Mar-2021', 78, 156);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (285, 19, 2003, '07-Apr-2021', 57, 172);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (286, 14, 1997, '15-Aug-2021', 91, 160);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (287, 93, 1991, '02-Jun-2021', 95, 10);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (288, 90, 2006, '09-Nov-2021', 68, 186);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (289, 24, 2012, '12-Aug-2021', 78, 105);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (290, 5, 1986, '03-Sep-2021', 73, 139);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (291, 22, 1998, '26-Jan-2021', 97, 25);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (292, 20, 2006, '14-Oct-2021', 92, 59);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (293, 94, 1998, '07-Aug-2021', 96, 145);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (294, 75, 2008, '06-May-2021', 90, 85);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (295, 73, 1998, '29-Jun-2021', 53, 116);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (296, 18, 1992, '25-Oct-2021', 91, 27);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (297, 90, 1975, '17-Nov-2021', 68, 112);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (298, 44, 1986, '28-Jul-2021', 60, 69);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (299, 69, 1986, '14-Nov-2021', 68, 30);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (300, 71, 2007, '03-Jul-2021', 59, 176);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (301, 94, 1984, '01-Feb-2021', 93, 119);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (302, 73, 2011, '22-May-2021', 91, 126);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (303, 51, 2007, '15-Jan-2021', 96, 149);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (304, 22, 2005, '14-Apr-2021', 74, 191);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (305, 18, 1999, '16-Jul-2021', 63, 83);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (306, 10, 2008, '30-Jan-2021', 80, 118);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (307, 90, 2003, '06-Feb-2021', 52, 29);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (308, 84, 2008, '06-Dec-2021', 91, 133);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (309, 35, 2010, '11-Nov-2021', 85, 155);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (310, 65, 2012, '01-Jul-2021', 90, 87);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (311, 18, 2011, '10-Nov-2021', 58, 54);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (312, 36, 1991, '12-May-2021', 58, 19);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (313, 100, 2003, '30-Jan-2021', 97, 97);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (314, 66, 2005, '16-Feb-2021', 76, 139);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (315, 73, 2000, '16-Dec-2021', 79, 57);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (316, 36, 2012, '27-Apr-2021', 79, 110);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (317, 52, 2002, '14-Oct-2021', 76, 52);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (318, 63, 1988, '02-Jun-2021', 72, 49);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (319, 80, 1994, '26-Aug-2021', 71, 96);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (320, 36, 1999, '03-May-2021', 95, 39);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (321, 16, 2002, '07-Dec-2021', 52, 60);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (322, 35, 1997, '21-Jan-2021', 84, 113);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (323, 35, 1989, '04-Jun-2021', 73, 83);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (324, 53, 1989, '11-Feb-2021', 95, 12);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (325, 15, 1993, '23-Aug-2021', 82, 50);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (326, 78, 2007, '24-Sep-2021', 72, 3);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (327, 20, 2006, '25-Dec-2020', 86, 18);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (328, 96, 2000, '16-May-2021', 87, 30);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (329, 52, 2011, '04-Jan-2021', 82, 37);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (330, 33, 2004, '10-Jun-2021', 75, 38);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (331, 17, 2001, '20-Jun-2021', 83, 93);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (332, 94, 1997, '16-Aug-2021', 72, 186);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (333, 36, 1984, '11-May-2021', 75, 9);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (334, 98, 1998, '16-Apr-2021', 51, 92);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (335, 89, 1993, '27-Feb-2021', 82, 2);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (336, 13, 2011, '14-Aug-2021', 91, 169);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (337, 51, 2007, '21-Sep-2021', 77, 75);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (338, 52, 1998, '24-Nov-2021', 83, 26);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (339, 58, 2001, '13-Jan-2021', 66, 140);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (340, 33, 1991, '23-Jun-2021', 78, 136);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (341, 95, 2012, '21-Jun-2021', 98, 6);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (342, 6, 2009, '21-Feb-2021', 97, 45);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (343, 64, 1999, '15-Jun-2021', 68, 185);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (344, 72, 2003, '26-Nov-2021', 59, 179);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (345, 29, 2009, '09-Feb-2021', 55, 31);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (346, 86, 2007, '03-Jan-2021', 100, 116);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (347, 32, 2005, '20-Jun-2021', 53, 114);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (348, 49, 2007, '25-Aug-2021', 82, 70);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (349, 69, 1985, '27-Jan-2021', 96, 64);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (350, 88, 2003, '25-Dec-2020', 53, 93);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (351, 8, 2001, '12-Jan-2021', 67, 152);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (352, 8, 2010, '06-Jun-2021', 82, 50);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (353, 4, 2001, '23-Dec-2020', 51, 134);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (354, 10, 2009, '19-Aug-2021', 76, 173);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (355, 82, 1994, '16-Jun-2021', 74, 108);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (356, 80, 2009, '17-May-2021', 94, 159);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (357, 3, 2006, '11-Jun-2021', 68, 114);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (358, 65, 1999, '24-Feb-2021', 97, 172);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (359, 31, 1998, '21-Dec-2020', 63, 49);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (360, 93, 1992, '17-Feb-2021', 89, 92);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (361, 48, 2010, '22-Jul-2021', 79, 18);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (362, 70, 2004, '10-Feb-2021', 93, 39);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (363, 83, 1992, '27-Oct-2021', 99, 30);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (364, 49, 1996, '05-Jun-2021', 74, 124);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (365, 42, 1994, '22-Feb-2021', 70, 82);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (366, 12, 2003, '25-Nov-2021', 83, 13);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (367, 52, 2010, '08-Jul-2021', 80, 134);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (368, 87, 2004, '06-Oct-2021', 91, 162);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (369, 61, 1990, '19-Mar-2021', 52, 160);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (370, 86, 1991, '10-Jan-2021', 94, 81);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (371, 88, 1995, '15-Oct-2021', 71, 136);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (372, 5, 1999, '17-Jul-2021', 66, 193);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (373, 92, 1997, '26-Nov-2021', 83, 195);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (374, 71, 1998, '14-May-2021', 88, 38);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (375, 5, 1999, '26-Jul-2021', 79, 97);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (376, 16, 2005, '26-Mar-2021', 54, 145);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (377, 62, 2001, '07-Feb-2021', 92, 197);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (378, 12, 2008, '19-Feb-2021', 73, 128);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (379, 83, 1995, '29-Jul-2021', 97, 8);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (380, 62, 2011, '27-Jun-2021', 88, 42);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (381, 77, 1993, '10-Jan-2021', 82, 33);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (382, 2, 1995, '07-Mar-2021', 59, 153);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (383, 82, 1987, '16-Apr-2021', 62, 154);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (384, 86, 2011, '21-Mar-2021', 74, 66);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (385, 22, 1993, '12-Jul-2021', 93, 172);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (386, 70, 1994, '21-Apr-2021', 91, 31);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (387, 35, 2008, '28-Jun-2021', 72, 114);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (388, 23, 1996, '31-Aug-2021', 66, 153);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (389, 32, 2008, '19-Mar-2021', 65, 12);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (390, 99, 1993, '09-Aug-2021', 84, 184);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (391, 46, 1989, '01-Nov-2021', 64, 195);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (392, 25, 2009, '11-Jun-2021', 99, 35);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (393, 28, 1991, '11-Sep-2021', 77, 52);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (394, 88, 2006, '09-May-2021', 50, 5);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (395, 96, 1984, '22-May-2021', 63, 94);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (396, 67, 2006, '27-Jul-2021', 86, 151);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (397, 27, 2003, '06-Aug-2021', 66, 9);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (398, 92, 2005, '01-Mar-2021', 81, 64);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (399, 20, 2012, '10-Jul-2021', 61, 101);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (400, 20, 1970, '29-Jan-2021', 56, 186);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (401, 34, 2009, '06-Feb-2021', 74, 76);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (402, 33, 2010, '20-Dec-2020', 70, 147);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (403, 75, 2001, '17-Jul-2021', 61, 153);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (404, 19, 2001, '16-May-2021', 98, 111);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (405, 28, 1986, '08-Sep-2021', 53, 65);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (406, 1, 2009, '09-Feb-2021', 74, 75);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (407, 28, 2013, '07-Feb-2021', 64, 21);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (408, 70, 1985, '04-Mar-2021', 73, 117);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (409, 4, 2008, '15-Jan-2021', 77, 177);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (410, 1, 1995, '13-Aug-2021', 50, 91);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (411, 71, 2009, '06-May-2021', 62, 137);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (412, 71, 2009, '21-Mar-2021', 98, 141);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (413, 92, 2004, '20-Mar-2021', 68, 64);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (414, 97, 2010, '23-Jun-2021', 63, 71);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (415, 76, 2002, '19-Feb-2021', 82, 67);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (416, 27, 2010, '18-May-2021', 100, 4);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (417, 94, 2009, '11-Mar-2021', 59, 2);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (418, 33, 2009, '16-Nov-2021', 99, 64);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (419, 97, 1981, '12-Sep-2021', 81, 114);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (420, 59, 2006, '05-Mar-2021', 97, 179);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (421, 81, 2005, '23-Sep-2021', 66, 103);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (422, 100, 2006, '23-Jan-2021', 92, 76);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (423, 19, 2000, '12-Nov-2021', 100, 72);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (424, 23, 2006, '05-Nov-2021', 89, 24);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (425, 43, 1993, '10-Aug-2021', 55, 55);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (426, 92, 2009, '11-Feb-2021', 69, 192);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (427, 67, 1985, '23-May-2021', 57, 179);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (428, 61, 2010, '22-Feb-2021', 73, 111);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (429, 87, 1992, '07-Mar-2021', 89, 21);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (430, 77, 2011, '09-Sep-2021', 55, 181);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (431, 36, 2007, '07-Sep-2021', 95, 185);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (432, 31, 1989, '06-Apr-2021', 64, 33);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (433, 54, 1992, '10-Feb-2021', 87, 61);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (434, 32, 1997, '17-Feb-2021', 82, 158);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (435, 70, 2012, '25-Sep-2021', 56, 187);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (436, 43, 1992, '31-Oct-2021', 100, 124);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (437, 73, 1985, '03-Nov-2021', 77, 113);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (438, 9, 1994, '26-Jun-2021', 62, 181);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (439, 3, 1999, '27-Jul-2021', 78, 198);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (440, 48, 2011, '29-Jan-2021', 78, 8);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (441, 13, 1985, '09-Dec-2021', 66, 194);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (442, 74, 2012, '02-Sep-2021', 84, 7);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (443, 92, 2000, '15-Sep-2021', 84, 170);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (444, 26, 1987, '01-Apr-2021', 75, 36);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (445, 29, 2002, '22-Nov-2021', 77, 80);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (446, 61, 2004, '20-May-2021', 62, 7);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (447, 50, 2002, '16-Oct-2021', 75, 162);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (448, 79, 1998, '11-Sep-2021', 74, 76);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (449, 28, 1995, '03-May-2021', 75, 51);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (450, 2, 2000, '29-Sep-2021', 52, 119);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (451, 16, 2005, '07-Jan-2021', 85, 82);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (452, 50, 2001, '29-Jun-2021', 79, 32);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (453, 13, 2000, '15-Sep-2021', 59, 180);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (454, 7, 2011, '24-Feb-2021', 63, 33);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (455, 51, 2010, '04-Dec-2021', 50, 129);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (456, 78, 2012, '17-Jul-2021', 60, 36);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (457, 16, 2010, '12-Apr-2021', 98, 137);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (458, 93, 2012, '10-Apr-2021', 61, 23);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (459, 3, 1996, '30-Apr-2021', 65, 11);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (460, 78, 2010, '23-Apr-2021', 71, 161);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (461, 60, 2003, '21-Apr-2021', 87, 190);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (462, 80, 2007, '07-Mar-2021', 70, 44);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (463, 38, 2011, '04-Dec-2021', 78, 14);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (464, 4, 2009, '28-Apr-2021', 86, 106);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (465, 17, 2011, '07-May-2021', 55, 159);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (466, 38, 1995, '19-Dec-2020', 81, 155);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (467, 32, 2012, '27-Dec-2020', 51, 67);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (468, 71, 1987, '29-Oct-2021', 70, 25);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (469, 8, 1997, '15-May-2021', 79, 181);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (470, 50, 1998, '31-Jan-2021', 52, 25);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (471, 69, 2004, '04-Apr-2021', 82, 124);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (472, 60, 1991, '10-Feb-2021', 68, 129);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (473, 80, 2013, '13-Sep-2021', 74, 194);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (474, 54, 1992, '05-Jan-2021', 92, 192);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (475, 8, 2004, '13-Mar-2021', 100, 186);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (476, 48, 2002, '14-Feb-2021', 96, 69);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (477, 48, 1985, '13-Sep-2021', 99, 176);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (478, 92, 2002, '22-Sep-2021', 71, 26);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (479, 91, 2003, '30-Jun-2021', 100, 145);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (480, 100, 2009, '25-Sep-2021', 64, 116);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (481, 26, 1994, '20-May-2021', 55, 7);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (482, 54, 1986, '01-Jun-2021', 72, 168);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (483, 13, 2008, '07-Jan-2021', 88, 127);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (484, 17, 2010, '29-Aug-2021', 76, 181);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (485, 3, 1995, '16-Oct-2021', 81, 32);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (486, 43, 2008, '07-Jan-2021', 55, 143);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (487, 83, 2001, '09-Aug-2021', 100, 27);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (488, 29, 2008, '23-Dec-2020', 96, 38);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (489, 46, 2002, '05-Oct-2021', 60, 121);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (490, 14, 1998, '06-Dec-2021', 51, 132);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (491, 92, 1996, '28-Feb-2021', 88, 94);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (492, 89, 2010, '05-Apr-2021', 82, 116);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (493, 14, 1994, '25-Oct-2021', 56, 126);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (494, 97, 1994, '24-May-2021', 69, 96);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (495, 9, 2011, '24-Jan-2021', 72, 103);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (496, 5, 2011, '26-Mar-2021', 83, 57);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (497, 5, 2013, '06-Apr-2021', 59, 181);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (498, 46, 1955, '28-Nov-2021', 100, 63);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (499, 31, 2012, '25-Jan-2021', 50, 76);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (500, 10, 1985, '05-Dec-2021', 88, 141);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (501, 90, 1991, '09-Jan-2021', 77, 167);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (502, 6, 2011, '11-Nov-2021', 82, 54);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (503, 40, 1988, '13-Dec-2021', 87, 88);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (504, 16, 1997, '23-Jul-2021', 82, 26);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (505, 3, 2009, '08-Jun-2021', 67, 4);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (506, 37, 2011, '16-Oct-2021', 59, 115);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (507, 2, 2005, '09-Mar-2021', 55, 168);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (508, 71, 1996, '12-Sep-2021', 77, 167);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (509, 6, 2012, '13-Jan-2021', 50, 84);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (510, 75, 2001, '23-Feb-2021', 55, 160);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (511, 99, 1991, '31-Dec-2020', 85, 177);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (512, 11, 2011, '29-Jul-2021', 70, 195);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (513, 96, 2005, '28-Jan-2021', 52, 198);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (514, 88, 2008, '24-Apr-2021', 98, 123);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (515, 83, 1967, '24-Jan-2021', 99, 197);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (516, 85, 2004, '11-Feb-2021', 96, 64);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (517, 90, 1994, '24-May-2021', 66, 199);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (518, 57, 1989, '17-Feb-2021', 50, 106);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (519, 23, 2008, '04-Nov-2021', 56, 83);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (520, 24, 1998, '15-Mar-2021', 94, 59);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (521, 2, 2002, '14-Jun-2021', 81, 14);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (522, 63, 2011, '16-Feb-2021', 62, 173);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (523, 17, 1993, '11-Aug-2021', 57, 151);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (524, 9, 1989, '21-Apr-2021', 76, 3);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (525, 47, 2000, '14-Sep-2021', 77, 136);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (526, 66, 2007, '04-Aug-2021', 71, 121);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (527, 77, 1998, '22-Apr-2021', 63, 57);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (528, 66, 2002, '13-Mar-2021', 91, 71);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (529, 2, 2007, '08-May-2021', 52, 116);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (530, 64, 2009, '29-Nov-2021', 78, 152);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (531, 46, 2002, '20-Mar-2021', 51, 63);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (532, 42, 2006, '19-May-2021', 93, 104);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (533, 24, 1996, '15-May-2021', 86, 23);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (534, 22, 2007, '25-Jun-2021', 60, 101);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (535, 59, 1993, '21-May-2021', 54, 42);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (536, 20, 1996, '14-Dec-2021', 52, 181);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (537, 59, 1992, '25-Oct-2021', 78, 8);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (538, 76, 1996, '01-Sep-2021', 68, 120);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (539, 53, 2000, '18-Oct-2021', 53, 106);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (540, 5, 2000, '19-Nov-2021', 81, 61);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (541, 56, 1996, '05-Jun-2021', 57, 13);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (542, 59, 1987, '07-Jul-2021', 66, 15);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (543, 83, 1999, '15-Jul-2021', 98, 2);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (544, 66, 2005, '28-May-2021', 77, 162);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (545, 3, 2001, '18-Nov-2021', 90, 67);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (546, 5, 1998, '19-Jun-2021', 95, 21);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (547, 79, 1998, '05-Jun-2021', 100, 115);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (548, 89, 2002, '15-Oct-2021', 99, 74);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (549, 55, 1992, '21-Oct-2021', 74, 51);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (550, 5, 1996, '13-Jan-2021', 89, 50);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (551, 19, 1990, '11-May-2021', 54, 90);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (552, 97, 2005, '20-Sep-2021', 64, 145);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (553, 91, 1999, '27-Jul-2021', 88, 4);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (554, 85, 1966, '05-Nov-2021', 85, 168);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (555, 80, 2002, '07-Jul-2021', 80, 15);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (556, 99, 2009, '18-Apr-2021', 51, 136);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (557, 43, 2010, '01-Mar-2021', 96, 27);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (558, 35, 1993, '28-Jan-2021', 57, 125);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (559, 3, 2012, '23-Sep-2021', 88, 189);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (560, 28, 1997, '26-Jun-2021', 99, 52);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (561, 77, 1997, '11-Apr-2021', 82, 54);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (562, 54, 2012, '01-Sep-2021', 91, 104);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (563, 65, 1995, '31-Oct-2021', 78, 133);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (564, 97, 2008, '21-Mar-2021', 74, 187);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (565, 57, 2012, '15-Feb-2021', 60, 16);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (566, 10, 1998, '31-Jan-2021', 77, 171);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (567, 68, 2000, '01-Apr-2021', 94, 14);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (568, 45, 1997, '18-Sep-2021', 89, 152);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (569, 9, 1992, '18-Jun-2021', 51, 107);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (570, 45, 2011, '19-Mar-2021', 84, 172);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (571, 73, 1992, '08-Mar-2021', 56, 123);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (572, 22, 1997, '27-Dec-2020', 83, 71);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (573, 17, 2004, '28-Oct-2021', 78, 128);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (574, 30, 2005, '08-Apr-2021', 87, 75);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (575, 29, 2005, '09-Jan-2021', 92, 1);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (576, 8, 1996, '20-Apr-2021', 70, 177);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (577, 61, 2004, '23-Feb-2021', 56, 142);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (578, 70, 1994, '07-Jun-2021', 67, 187);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (579, 48, 2010, '11-May-2021', 61, 1);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (580, 82, 1999, '01-Feb-2021', 95, 142);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (581, 60, 1995, '10-Jun-2021', 74, 54);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (582, 48, 2006, '15-Jun-2021', 77, 154);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (583, 4, 2012, '03-Jul-2021', 81, 144);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (584, 2, 2003, '07-Apr-2021', 52, 125);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (585, 33, 2000, '23-Dec-2020', 82, 67);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (586, 79, 2012, '19-Mar-2021', 67, 16);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (587, 31, 2011, '07-Dec-2021', 97, 155);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (588, 72, 2002, '24-Nov-2021', 66, 83);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (589, 58, 1992, '18-Jan-2021', 64, 98);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (590, 34, 2010, '14-Sep-2021', 83, 89);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (591, 28, 2012, '16-Jul-2021', 88, 7);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (592, 80, 2002, '24-Mar-2021', 76, 161);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (593, 6, 2009, '07-Sep-2021', 92, 19);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (594, 65, 2006, '04-Jul-2021', 88, 66);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (595, 17, 2010, '08-Jul-2021', 97, 128);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (596, 4, 1998, '16-May-2021', 69, 81);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (597, 39, 2006, '24-Jun-2021', 62, 159);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (598, 12, 2007, '23-Jul-2021', 52, 18);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (599, 83, 1986, '07-Aug-2021', 74, 45);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (600, 42, 1995, '18-Jan-2021', 80, 59);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (601, 86, 1993, '30-Nov-2021', 54, 180);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (602, 46, 1994, '06-Feb-2021', 58, 98);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (603, 66, 2004, '16-Feb-2021', 78, 160);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (604, 54, 2012, '15-Jan-2021', 70, 99);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (605, 96, 2004, '19-Mar-2021', 72, 135);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (606, 58, 2012, '20-Nov-2021', 97, 27);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (607, 66, 2000, '08-Apr-2021', 57, 145);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (608, 9, 2009, '09-Jul-2021', 54, 50);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (609, 21, 2002, '09-Mar-2021', 53, 181);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (610, 23, 2005, '25-Dec-2020', 71, 150);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (611, 70, 1993, '11-Jun-2021', 89, 89);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (612, 11, 2004, '21-Dec-2020', 50, 147);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (613, 61, 2001, '13-Apr-2021', 65, 35);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (614, 65, 1993, '12-Oct-2021', 96, 167);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (615, 13, 2009, '03-Jul-2021', 89, 167);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (616, 10, 2008, '15-Dec-2021', 98, 19);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (617, 55, 2006, '07-Apr-2021', 79, 88);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (618, 61, 2001, '04-Mar-2021', 94, 10);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (619, 40, 2005, '02-Jan-2021', 87, 26);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (620, 2, 1985, '20-Sep-2021', 100, 118);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (621, 78, 1996, '23-Sep-2021', 77, 3);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (622, 64, 1993, '06-Sep-2021', 68, 78);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (623, 66, 1997, '17-Jul-2021', 68, 3);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (624, 30, 2009, '29-May-2021', 79, 189);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (625, 58, 2010, '21-May-2021', 94, 112);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (626, 27, 1994, '27-Oct-2021', 91, 173);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (627, 77, 2002, '06-Oct-2021', 100, 13);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (628, 19, 1988, '29-Jun-2021', 65, 57);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (629, 86, 1993, '14-Sep-2021', 81, 154);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (630, 38, 2010, '12-May-2021', 92, 99);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (631, 98, 2009, '14-Jan-2021', 83, 66);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (632, 49, 1992, '07-Sep-2021', 67, 10);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (633, 100, 2002, '27-May-2021', 100, 41);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (634, 20, 2010, '14-Sep-2021', 70, 59);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (635, 2, 2002, '20-Jun-2021', 62, 19);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (636, 61, 2004, '11-Sep-2021', 92, 161);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (637, 65, 2000, '09-Dec-2021', 55, 171);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (638, 61, 1998, '11-Apr-2021', 59, 45);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (639, 23, 1997, '08-Jan-2021', 77, 54);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (640, 76, 2012, '04-Sep-2021', 86, 199);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (641, 16, 1997, '10-Oct-2021', 60, 48);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (642, 11, 1993, '01-Jun-2021', 72, 29);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (643, 57, 2006, '27-Feb-2021', 79, 42);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (644, 84, 2007, '17-Jul-2021', 56, 173);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (645, 7, 2003, '02-Feb-2021', 73, 128);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (646, 56, 2009, '28-Dec-2020', 51, 52);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (647, 2, 2009, '26-Mar-2021', 71, 23);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (648, 44, 2010, '23-Nov-2021', 88, 59);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (649, 32, 1991, '30-Oct-2021', 80, 114);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (650, 85, 2002, '23-Apr-2021', 66, 23);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (651, 46, 1990, '14-Nov-2021', 88, 85);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (652, 80, 2002, '11-Aug-2021', 81, 94);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (653, 4, 1992, '07-Jan-2021', 57, 78);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (654, 16, 1989, '27-Feb-2021', 77, 114);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (655, 7, 2008, '15-Jan-2021', 67, 14);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (656, 60, 2007, '11-Apr-2021', 54, 39);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (657, 82, 2008, '09-Apr-2021', 70, 11);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (658, 12, 2011, '03-Mar-2021', 60, 25);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (659, 32, 2000, '10-Aug-2021', 95, 39);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (660, 42, 2008, '25-Nov-2021', 83, 159);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (661, 10, 2005, '05-Oct-2021', 53, 167);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (662, 91, 1992, '06-Jan-2021', 84, 120);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (663, 28, 1989, '08-Aug-2021', 60, 34);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (664, 100, 2009, '24-Jun-2021', 86, 46);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (665, 1, 1992, '15-Oct-2021', 58, 150);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (666, 75, 2007, '22-Mar-2021', 87, 117);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (667, 64, 1980, '20-Jul-2021', 78, 70);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (668, 17, 2004, '22-Jul-2021', 74, 55);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (669, 19, 2012, '25-Jun-2021', 51, 188);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (670, 52, 2009, '11-Jan-2021', 90, 152);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (671, 67, 2007, '20-Nov-2021', 58, 185);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (672, 10, 1986, '18-Jul-2021', 63, 117);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (673, 37, 2010, '01-Mar-2021', 84, 8);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (674, 79, 2005, '23-Dec-2020', 93, 176);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (675, 56, 1993, '18-Jul-2021', 99, 27);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (676, 2, 1995, '31-Mar-2021', 99, 145);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (677, 10, 2010, '27-Nov-2021', 65, 43);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (678, 74, 2003, '08-Apr-2021', 57, 88);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (679, 26, 2009, '20-Dec-2020', 77, 86);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (680, 29, 2001, '23-Oct-2021', 59, 111);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (681, 12, 1997, '24-Dec-2020', 73, 57);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (682, 93, 2003, '26-Oct-2021', 94, 128);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (683, 88, 1993, '24-Jan-2021', 92, 90);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (684, 23, 2005, '21-Jan-2021', 92, 49);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (685, 40, 2005, '11-Feb-2021', 65, 93);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (686, 69, 2011, '05-Jan-2021', 99, 11);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (687, 77, 2010, '23-Jan-2021', 69, 178);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (688, 88, 2008, '05-Dec-2021', 67, 16);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (689, 37, 2001, '25-Sep-2021', 61, 11);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (690, 94, 1997, '20-Apr-2021', 100, 109);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (691, 70, 2008, '24-Jan-2021', 66, 180);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (692, 9, 2006, '14-Oct-2021', 59, 197);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (693, 75, 1992, '01-Nov-2021', 50, 118);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (694, 59, 2004, '17-Apr-2021', 58, 49);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (695, 46, 1999, '16-Apr-2021', 67, 22);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (696, 72, 2001, '18-Feb-2021', 77, 69);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (697, 74, 2009, '15-Nov-2021', 94, 112);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (698, 60, 2011, '14-Jun-2021', 62, 7);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (699, 11, 2005, '26-Apr-2021', 90, 64);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (700, 36, 2005, '03-May-2021', 65, 41);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (701, 15, 1987, '01-Jun-2021', 97, 55);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (702, 66, 2009, '11-Jun-2021', 88, 55);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (703, 33, 2002, '09-May-2021', 89, 168);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (704, 22, 1994, '03-Jul-2021', 56, 24);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (705, 67, 2007, '22-Jul-2021', 99, 80);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (706, 50, 2008, '19-Oct-2021', 52, 152);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (707, 32, 2008, '18-Apr-2021', 53, 85);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (708, 58, 2008, '22-Jul-2021', 57, 60);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (709, 46, 2000, '12-May-2021', 100, 137);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (710, 18, 1996, '15-Feb-2021', 75, 188);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (711, 64, 1997, '02-Feb-2021', 94, 113);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (712, 3, 2009, '11-Feb-2021', 76, 151);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (713, 78, 2007, '17-Feb-2021', 58, 73);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (714, 43, 1999, '06-Feb-2021', 79, 199);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (715, 100, 2011, '21-Jan-2021', 53, 95);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (716, 50, 1996, '02-Feb-2021', 98, 8);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (717, 22, 1993, '19-Nov-2021', 81, 199);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (718, 48, 1989, '30-Apr-2021', 62, 158);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (719, 59, 2000, '01-May-2021', 63, 196);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (720, 52, 2006, '04-May-2021', 78, 154);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (721, 28, 2009, '24-Apr-2021', 76, 33);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (722, 26, 1998, '10-Oct-2021', 70, 199);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (723, 86, 1997, '28-Apr-2021', 63, 32);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (724, 2, 2006, '21-Apr-2021', 61, 57);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (725, 84, 1997, '25-Sep-2021', 76, 24);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (726, 55, 2007, '08-Mar-2021', 63, 18);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (727, 53, 1992, '04-Aug-2021', 88, 65);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (728, 31, 2011, '27-Nov-2021', 50, 174);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (729, 83, 1985, '09-Apr-2021', 94, 120);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (730, 62, 2002, '23-May-2021', 71, 137);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (731, 36, 1993, '26-May-2021', 56, 46);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (732, 81, 1991, '27-Aug-2021', 95, 71);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (733, 58, 2003, '29-Jan-2021', 65, 122);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (734, 29, 1994, '17-May-2021', 92, 173);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (735, 50, 2001, '13-Feb-2021', 62, 103);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (736, 94, 1992, '28-May-2021', 96, 176);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (737, 32, 2009, '08-Jun-2021', 75, 134);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (738, 90, 2012, '23-Nov-2021', 56, 53);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (739, 25, 2006, '23-Apr-2021', 71, 165);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (740, 64, 2007, '17-Jun-2021', 56, 69);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (741, 67, 2005, '17-Feb-2021', 65, 25);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (742, 45, 2008, '01-Jun-2021', 98, 88);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (743, 60, 1999, '07-Jul-2021', 60, 79);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (744, 7, 1995, '13-Jan-2021', 98, 107);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (745, 74, 2004, '14-Jul-2021', 58, 75);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (746, 7, 1996, '17-Aug-2021', 79, 5);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (747, 4, 2007, '05-Jun-2021', 73, 159);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (748, 30, 1985, '08-Jul-2021', 58, 116);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (749, 72, 2002, '22-Feb-2021', 50, 49);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (750, 44, 1964, '07-Nov-2021', 82, 183);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (751, 45, 2010, '22-Dec-2020', 86, 127);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (752, 55, 2007, '25-Jul-2021', 50, 131);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (753, 90, 2004, '08-Dec-2021', 90, 136);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (754, 89, 2000, '27-Sep-2021', 70, 167);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (755, 63, 2010, '05-Sep-2021', 93, 159);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (756, 57, 2010, '06-Mar-2021', 74, 40);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (757, 25, 1992, '21-Aug-2021', 56, 183);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (758, 81, 2006, '23-Jan-2021', 57, 128);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (759, 41, 2001, '04-Oct-2021', 69, 169);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (760, 40, 1985, '29-Mar-2021', 55, 35);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (761, 18, 2013, '22-Dec-2020', 77, 2);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (762, 12, 1999, '19-Jan-2021', 51, 87);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (763, 57, 2010, '07-Jun-2021', 80, 117);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (764, 28, 1987, '18-May-2021', 92, 44);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (765, 4, 2000, '24-Aug-2021', 75, 59);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (766, 28, 1995, '04-Aug-2021', 93, 107);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (767, 3, 1994, '25-Aug-2021', 61, 175);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (768, 68, 2005, '09-Jul-2021', 62, 85);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (769, 72, 2002, '23-Dec-2020', 54, 1);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (770, 81, 2007, '07-Nov-2021', 99, 193);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (771, 38, 2008, '08-Mar-2021', 65, 16);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (772, 71, 1990, '30-Jan-2021', 95, 45);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (773, 11, 2006, '28-Mar-2021', 71, 4);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (774, 36, 1963, '06-Jul-2021', 57, 11);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (775, 21, 2009, '31-Jan-2021', 79, 200);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (776, 7, 1967, '16-Mar-2021', 67, 128);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (777, 15, 1999, '10-Aug-2021', 63, 184);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (778, 73, 2001, '21-Nov-2021', 76, 89);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (779, 39, 2008, '11-Mar-2021', 68, 134);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (780, 91, 2012, '01-Oct-2021', 76, 22);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (781, 97, 2007, '21-Aug-2021', 95, 194);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (782, 75, 2006, '26-Jan-2021', 61, 10);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (783, 49, 2011, '19-Sep-2021', 82, 196);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (784, 27, 1999, '18-Sep-2021', 80, 8);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (785, 75, 2002, '16-May-2021', 76, 36);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (786, 41, 1994, '20-Dec-2020', 81, 54);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (787, 6, 2010, '22-Feb-2021', 94, 127);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (788, 65, 1994, '27-Sep-2021', 73, 50);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (789, 13, 1987, '27-Aug-2021', 70, 10);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (790, 17, 2008, '02-Mar-2021', 59, 133);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (791, 45, 2005, '17-Dec-2020', 81, 180);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (792, 82, 2009, '30-Dec-2020', 78, 137);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (793, 94, 1997, '29-Jul-2021', 72, 80);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (794, 87, 1992, '11-Jan-2021', 65, 120);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (795, 90, 1998, '30-Nov-2021', 57, 120);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (796, 4, 1996, '21-Aug-2021', 63, 151);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (797, 8, 1998, '22-Sep-2021', 87, 144);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (798, 91, 1992, '03-Jan-2021', 58, 76);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (799, 10, 2003, '26-May-2021', 82, 20);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (800, 35, 1999, '07-May-2021', 92, 138);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (801, 2, 2007, '05-May-2021', 54, 139);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (802, 21, 2004, '08-Feb-2021', 50, 64);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (803, 21, 2003, '16-Jan-2021', 91, 193);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (804, 58, 2005, '10-Oct-2021', 57, 132);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (805, 8, 1984, '02-Jan-2021', 78, 172);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (806, 16, 2007, '30-May-2021', 89, 104);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (807, 47, 2003, '25-Sep-2021', 94, 95);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (808, 90, 2009, '30-Mar-2021', 50, 165);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (809, 53, 2003, '27-Apr-2021', 63, 35);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (810, 39, 2011, '06-Nov-2021', 82, 195);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (811, 11, 2012, '08-Feb-2021', 84, 83);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (812, 76, 2007, '20-Aug-2021', 85, 85);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (813, 17, 2003, '10-Sep-2021', 98, 24);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (814, 66, 2006, '27-Dec-2020', 54, 65);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (815, 87, 2000, '21-Dec-2020', 98, 21);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (816, 68, 2011, '18-May-2021', 65, 76);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (817, 35, 1971, '18-Feb-2021', 64, 49);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (818, 26, 2001, '15-Sep-2021', 62, 81);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (819, 60, 1993, '26-Sep-2021', 55, 153);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (820, 67, 2002, '04-Oct-2021', 75, 165);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (821, 82, 2001, '12-Feb-2021', 69, 182);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (822, 94, 2003, '22-Apr-2021', 76, 149);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (823, 18, 2001, '14-Apr-2021', 94, 106);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (824, 48, 2004, '27-Jan-2021', 67, 97);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (825, 59, 1992, '01-Jul-2021', 57, 23);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (826, 41, 2007, '01-Dec-2021', 65, 86);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (827, 68, 2007, '14-Sep-2021', 80, 30);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (828, 34, 2006, '20-Aug-2021', 50, 182);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (829, 80, 1987, '01-Jun-2021', 85, 60);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (830, 79, 2008, '22-Nov-2021', 100, 107);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (831, 15, 1998, '01-Feb-2021', 78, 181);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (832, 28, 1984, '01-Aug-2021', 63, 19);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (833, 38, 2007, '07-Jan-2021', 56, 191);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (834, 99, 1989, '02-Nov-2021', 95, 100);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (835, 42, 2001, '11-Jul-2021', 79, 24);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (836, 49, 2009, '25-Nov-2021', 56, 198);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (837, 31, 1998, '08-Jun-2021', 94, 183);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (838, 28, 1998, '28-Apr-2021', 53, 160);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (839, 96, 1994, '09-Feb-2021', 100, 90);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (840, 87, 1993, '03-Mar-2021', 74, 79);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (841, 12, 1986, '13-Jun-2021', 89, 18);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (842, 54, 2012, '30-Nov-2021', 66, 118);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (843, 45, 1996, '11-Oct-2021', 62, 197);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (844, 99, 2006, '04-Aug-2021', 71, 137);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (845, 43, 2011, '25-Jun-2021', 65, 154);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (846, 62, 1989, '28-Apr-2021', 76, 106);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (847, 67, 2013, '04-Jan-2021', 63, 196);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (848, 20, 1993, '12-Sep-2021', 96, 32);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (849, 100, 1992, '06-Oct-2021', 67, 133);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (850, 11, 2009, '04-Sep-2021', 76, 127);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (851, 8, 2000, '30-Jul-2021', 54, 190);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (852, 16, 2012, '10-Jan-2021', 59, 52);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (853, 84, 1984, '03-Sep-2021', 85, 145);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (854, 93, 1990, '07-Dec-2021', 51, 21);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (855, 44, 1982, '07-Oct-2021', 88, 77);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (856, 62, 2009, '24-Oct-2021', 78, 84);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (857, 25, 2008, '28-Nov-2021', 59, 65);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (858, 70, 2013, '11-Jul-2021', 80, 119);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (859, 22, 2003, '21-Mar-2021', 96, 199);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (860, 21, 1995, '18-Mar-2021', 76, 157);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (861, 62, 2006, '21-Nov-2021', 54, 6);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (862, 41, 1989, '21-Feb-2021', 50, 36);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (863, 22, 2002, '06-Jan-2021', 52, 195);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (864, 18, 2001, '17-Jun-2021', 87, 90);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (865, 15, 2001, '01-Mar-2021', 55, 10);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (866, 69, 2004, '25-Jun-2021', 99, 31);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (867, 27, 2012, '30-Jan-2021', 76, 197);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (868, 78, 1988, '25-Aug-2021', 51, 180);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (869, 13, 2007, '24-Feb-2021', 60, 39);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (870, 44, 2006, '31-Oct-2021', 50, 132);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (871, 68, 2001, '08-Oct-2021', 78, 190);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (872, 24, 1993, '15-Dec-2021', 58, 71);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (873, 32, 1992, '03-Jul-2021', 63, 143);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (874, 54, 1992, '11-Apr-2021', 67, 158);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (875, 73, 2003, '12-May-2021', 73, 137);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (876, 66, 2010, '05-Jun-2021', 83, 53);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (877, 70, 2007, '11-Nov-2021', 87, 78);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (878, 92, 2000, '20-Nov-2021', 88, 92);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (879, 36, 1996, '27-Dec-2020', 93, 84);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (880, 57, 2001, '25-Nov-2021', 52, 113);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (881, 58, 1994, '28-Oct-2021', 63, 182);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (882, 37, 1993, '10-Feb-2021', 94, 23);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (883, 72, 2004, '12-Nov-2021', 94, 51);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (884, 96, 1998, '22-Oct-2021', 95, 195);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (885, 36, 1996, '08-Jun-2021', 83, 42);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (886, 54, 1991, '26-Oct-2021', 53, 13);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (887, 44, 1990, '18-Aug-2021', 57, 37);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (888, 14, 1998, '12-Jun-2021', 76, 27);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (889, 61, 2011, '19-Sep-2021', 98, 152);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (890, 90, 2002, '21-Apr-2021', 63, 105);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (891, 1, 2009, '15-Nov-2021', 54, 167);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (892, 24, 1992, '21-Jan-2021', 59, 41);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (893, 87, 1977, '30-Mar-2021', 78, 35);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (894, 21, 1991, '05-Jun-2021', 94, 174);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (895, 58, 2005, '06-Nov-2021', 68, 71);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (896, 98, 1994, '09-Jan-2021', 90, 25);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (897, 91, 1993, '16-Apr-2021', 53, 78);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (898, 56, 2001, '16-Jul-2021', 85, 102);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (899, 64, 1986, '10-Nov-2021', 82, 108);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (900, 57, 2012, '23-Oct-2021', 80, 108);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (901, 58, 2013, '12-May-2021', 88, 124);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (902, 51, 1985, '04-Nov-2021', 98, 147);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (903, 93, 1983, '15-Aug-2021', 62, 24);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (904, 90, 2005, '24-Jun-2021', 56, 77);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (905, 76, 2002, '31-May-2021', 89, 39);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (906, 55, 1992, '11-Mar-2021', 96, 14);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (907, 12, 2001, '11-Nov-2021', 90, 64);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (908, 64, 2009, '29-Jun-2021', 75, 37);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (909, 43, 1999, '03-Sep-2021', 86, 21);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (910, 72, 1990, '31-Jan-2021', 96, 199);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (911, 54, 1996, '17-Oct-2021', 63, 39);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (912, 77, 1984, '15-Nov-2021', 52, 35);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (913, 1, 1972, '24-Aug-2021', 59, 106);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (914, 71, 1985, '30-Oct-2021', 97, 172);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (915, 57, 2004, '01-Nov-2021', 73, 159);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (916, 11, 2011, '28-May-2021', 87, 100);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (917, 57, 2004, '30-Aug-2021', 91, 51);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (918, 88, 2002, '10-Oct-2021', 57, 123);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (919, 63, 2011, '29-Apr-2021', 100, 157);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (920, 66, 2006, '10-Sep-2021', 93, 173);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (921, 33, 1999, '02-Sep-2021', 67, 107);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (922, 100, 1992, '10-Jul-2021', 92, 129);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (923, 11, 2006, '23-May-2021', 77, 33);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (924, 50, 1999, '26-Jul-2021', 57, 110);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (925, 18, 1993, '21-Nov-2021', 96, 52);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (926, 67, 1990, '29-May-2021', 90, 33);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (927, 51, 2000, '20-Apr-2021', 73, 119);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (928, 41, 2004, '28-Jan-2021', 81, 116);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (929, 41, 2007, '12-Jan-2021', 54, 35);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (930, 50, 2009, '01-Jun-2021', 65, 65);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (931, 98, 2003, '26-Sep-2021', 70, 101);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (932, 83, 2012, '21-Feb-2021', 86, 54);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (933, 3, 2008, '09-Aug-2021', 85, 155);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (934, 48, 2004, '14-Apr-2021', 68, 194);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (935, 49, 2005, '30-Jun-2021', 100, 146);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (936, 82, 2008, '23-Dec-2020', 71, 6);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (937, 32, 2005, '21-Apr-2021', 61, 19);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (938, 77, 2007, '15-Aug-2021', 79, 41);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (939, 40, 2008, '27-Apr-2021', 60, 36);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (940, 43, 2013, '17-Feb-2021', 93, 6);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (941, 15, 1999, '16-Jan-2021', 80, 175);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (942, 13, 1993, '04-Mar-2021', 54, 77);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (943, 29, 1996, '26-Mar-2021', 53, 125);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (944, 72, 1993, '01-Jun-2021', 52, 89);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (945, 87, 2007, '29-Jan-2021', 52, 110);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (946, 67, 2003, '23-Feb-2021', 71, 184);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (947, 74, 1994, '15-Jul-2021', 85, 49);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (948, 71, 1995, '24-Feb-2021', 58, 92);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (949, 33, 2004, '05-Dec-2021', 66, 133);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (950, 70, 2010, '29-Nov-2021', 100, 34);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (951, 53, 2007, '11-Sep-2021', 91, 47);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (952, 22, 2005, '12-Mar-2021', 67, 139);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (953, 39, 2005, '05-Feb-2021', 99, 145);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (954, 92, 1987, '27-Mar-2021', 66, 172);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (955, 61, 2011, '21-Mar-2021', 100, 72);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (956, 7, 2003, '28-Jul-2021', 91, 51);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (957, 39, 1998, '07-Sep-2021', 78, 147);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (958, 95, 2000, '29-Jun-2021', 83, 195);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (959, 3, 2007, '11-Dec-2021', 58, 37);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (960, 17, 2008, '28-Jan-2021', 75, 68);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (961, 14, 1996, '17-Jan-2021', 79, 39);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (962, 49, 2007, '21-Apr-2021', 65, 137);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (963, 24, 2010, '14-Oct-2021', 98, 6);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (964, 47, 2004, '01-Sep-2021', 77, 71);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (965, 26, 2001, '27-Feb-2021', 55, 66);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (966, 62, 1997, '19-Oct-2021', 79, 100);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (967, 61, 1997, '03-Sep-2021', 89, 102);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (968, 99, 2006, '13-Sep-2021', 75, 65);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (969, 95, 2011, '22-Jul-2021', 62, 26);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (970, 30, 2008, '27-Dec-2020', 85, 22);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (971, 46, 2009, '27-Aug-2021', 94, 64);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (972, 25, 1999, '31-May-2021', 58, 2);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (973, 11, 2008, '13-Jan-2021', 80, 24);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (974, 38, 1997, '05-Aug-2021', 84, 7);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (975, 88, 1988, '19-Sep-2021', 78, 58);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (976, 44, 1986, '28-Sep-2021', 96, 26);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (977, 37, 1997, '31-Jan-2021', 99, 99);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (978, 54, 1996, '25-Apr-2021', 93, 81);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (979, 70, 1991, '09-Feb-2021', 63, 192);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (980, 9, 2002, '10-Feb-2021', 88, 98);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (981, 74, 1994, '27-Aug-2021', 72, 137);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (982, 24, 1992, '08-Jan-2021', 76, 22);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (983, 96, 2003, '31-Mar-2021', 79, 43);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (984, 36, 1994, '08-Mar-2021', 78, 178);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (985, 99, 2011, '15-Jan-2021', 78, 100);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (986, 21, 2006, '21-Aug-2021', 80, 7);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (987, 76, 2011, '03-Dec-2021', 77, 168);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (988, 68, 1995, '24-Feb-2021', 74, 182);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (989, 13, 2003, '18-Sep-2021', 62, 76);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (990, 83, 1994, '31-May-2021', 79, 149);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (991, 10, 1998, '24-Apr-2021', 59, 29);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (992, 91, 2008, '09-Oct-2021', 90, 10);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (993, 81, 1996, '19-Jan-2021', 52, 129);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (994, 28, 1995, '09-Aug-2021', 51, 138);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (995, 64, 2013, '23-Jun-2021', 80, 25);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (996, 55, 1988, '04-Jun-2021', 91, 130);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (997, 5, 2006, '05-Feb-2021', 73, 153);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (998, 47, 2012, '29-Oct-2021', 98, 164);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (999, 51, 2001, '29-May-2021', 89, 139);
insert into mbta_traininfo (trainid, trainserialno, yearofmanufacturing, lastservicedate, capacity, employeeid) values (1000, 91, 1987, '23-Jul-2021', 88, 93);

----------------------------------------------------------------------------------------
--INSERT SCRIPTS FOR MBTA_TYPES
----------------------------------------------------------------------------------------

INSERT INTO MBTA_TYPES(TYPEID, TYPENAME) VALUES (1, 'ORANGE LINE');
INSERT INTO MBTA_TYPES(TYPEID, TYPENAME) VALUES (2, 'RED LINE');
INSERT INTO MBTA_TYPES(TYPEID, TYPENAME) VALUES (3, 'GREEN LINE - B');
INSERT INTO MBTA_TYPES(TYPEID, TYPENAME) VALUES (4, 'GREEN LINE - C');
INSERT INTO MBTA_TYPES(TYPEID, TYPENAME) VALUES (5, 'GREEN LINE - D');
INSERT INTO MBTA_TYPES(TYPEID, TYPENAME) VALUES (6, 'GREEN LINE - E');

----------------------------------------------------------------------------------------
--INSERT SCRIPTS FOR MBTA_ROUTEINFO
----------------------------------------------------------------------------------------

Insert into ADMIN.MBTA_ROUTEINFO (ROUTEID,TYPEID,ROUTE_FROM,ROUTE_TO,DURATION) values (1,1,'Forest Hills','Oak Grove',37);
Insert into ADMIN.MBTA_ROUTEINFO (ROUTEID,TYPEID,ROUTE_FROM,ROUTE_TO,DURATION) values (2,2,'Alewife','Ashmont',37);
Insert into ADMIN.MBTA_ROUTEINFO (ROUTEID,TYPEID,ROUTE_FROM,ROUTE_TO,DURATION) values (3,2,'Alewife','Braintree',50);
Insert into ADMIN.MBTA_ROUTEINFO (ROUTEID,TYPEID,ROUTE_FROM,ROUTE_TO,DURATION) values (4,3,'Boston College','Lechmere',45);
Insert into ADMIN.MBTA_ROUTEINFO (ROUTEID,TYPEID,ROUTE_FROM,ROUTE_TO,DURATION) values (5,4,'Cleveland Circle','Lechmere',45);
Insert into ADMIN.MBTA_ROUTEINFO (ROUTEID,TYPEID,ROUTE_FROM,ROUTE_TO,DURATION) values (6,5,'Riverside','Lechmere',45);
Insert into ADMIN.MBTA_ROUTEINFO (ROUTEID,TYPEID,ROUTE_FROM,ROUTE_TO,DURATION) values (7,6,'Heath Street','Lechmere',45);


----------------------------------------------------------------------------------------
--INSERT SCRIPTS FOR MBTA_SCHEDULE
----------------------------------------------------------------------------------------

insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (16, 18, 4, '6:28:12 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (50, 11, 7, '11:01:51 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (99, 67, 1, '4:53:31 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (91, 11, 5, '11:18:49 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (13, 84, 1, '6:49:26 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (78, 68, 2, '6:41:03 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (2, 47, 6, '6:22:03 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (48, 38, 6, '3:23:02 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (10, 98, 1, '3:56:25 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (62, 74, 7, '9:25:58 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (82, 47, 4, '4:50:50 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (81, 1, 3, '11:38:24 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (43, 55, 6, '2:44:50 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (53, 75, 2, '1:58:22 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (73, 80, 6, '2:36:06 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (82, 50, 4, '6:00:42 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (11, 22, 7, '10:35:14 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (60, 60, 6, '7:07:33 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (83, 49, 1, '9:49:46 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (14, 90, 1, '4:29:34 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (45, 47, 1, '1:00:21 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (32, 57, 3, '6:07:07 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (74, 19, 1, '10:00:29 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (7, 15, 4, '5:45:54 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (49, 37, 2, '3:50:50 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (98, 14, 4, '1:43:36 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (79, 94, 7, '11:04:12 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (92, 30, 3, '10:07:33 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (40, 7, 4, '5:35:34 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (52, 18, 7, '11:52:01 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (85, 78, 4, '6:35:56 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (31, 3, 6, '5:27:15 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (47, 55, 5, '9:21:16 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (62, 86, 1, '8:41:18 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (46, 5, 1, '2:16:32 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (21, 50, 4, '4:37:35 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (51, 82, 3, '4:45:18 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (9, 78, 6, '5:11:12 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (32, 32, 3, '6:32:58 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (32, 27, 5, '7:49:49 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (64, 50, 3, '4:59:33 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (22, 61, 3, '9:54:18 AM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (22, 31, 1, '11:21:13 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (18, 9, 6, '2:16:17 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (98, 61, 1, '9:48:02 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (71, 62, 1, '6:23:45 AM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (83, 42, 5, '5:23:18 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (13, 35, 7, '4:24:35 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (7, 96, 1, '10:42:37 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (9, 47, 6, '4:55:13 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (15, 5, 5, '8:38:54 AM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (31, 34, 3, '7:23:20 AM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (46, 74, 7, '1:07:43 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (45, 44, 1, '1:01:07 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (85, 55, 5, '9:17:02 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (37, 39, 1, '2:58:57 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (85, 24, 1, '10:45:39 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (77, 48, 1, '5:58:36 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (93, 23, 2, '8:56:57 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (95, 58, 5, '7:12:34 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (64, 25, 4, '8:32:37 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (13, 11, 7, '1:35:17 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (59, 9, 5, '9:00:33 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (39, 81, 4, '12:56:17 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (6, 43, 7, '7:54:52 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (77, 97, 5, '9:47:41 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (11, 26, 1, '11:24:20 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (2, 91, 6, '12:15:11 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (76, 95, 1, '4:02:43 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (24, 11, 1, '6:11:53 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (5, 87, 4, '11:29:33 AM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (62, 81, 7, '7:38:32 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (54, 79, 7, '4:56:01 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (88, 96, 4, '4:13:36 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (58, 89, 5, '6:35:11 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (90, 18, 5, '5:38:41 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (51, 9, 6, '2:07:50 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (49, 42, 2, '2:03:02 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (7, 76, 2, '6:33:40 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (23, 29, 6, '4:01:24 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (30, 5, 1, '11:40:34 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (45, 98, 6, '11:03:23 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (97, 20, 6, '6:35:50 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (51, 41, 6, '9:41:18 AM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (97, 78, 3, '4:06:46 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (54, 76, 3, '6:37:58 AM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (37, 98, 3, '7:24:11 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (25, 42, 7, '1:42:28 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (66, 16, 5, '1:18:32 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (62, 52, 5, '2:06:56 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (40, 76, 2, '1:21:36 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (63, 13, 5, '10:21:31 AM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (3, 56, 3, '5:33:17 AM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (88, 57, 4, '5:33:32 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (2, 52, 5, '9:30:20 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (33, 39, 7, '3:09:54 PM');
insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (67, 63, 1, '11:06:50 PM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (76, 25, 2, '7:46:32 AM');
--insert into mbta_schedule (ScheduleId, TrainId, RouteId, TrainTime) values (59, 62, 6, '3:06:12 PM');

----------------------------------------------------------------------------------------
--INSERT SCRIPTS FOR MBTA_STATION
----------------------------------------------------------------------------------------


call insert_into_mbta_station(7,'Heath Street',02130,42.3283433,-71.1127423,'Y',1,0);

call insert_into_mbta_station(7,'Back of hill',02130,42.3294219,-71.1130323,'Y',2,1);

call insert_into_mbta_station(7,'Riverway',02115,42.3315515,-71.1139492,'Y',3,2);

call insert_into_mbta_station(7,'Mission Park',02115,42.3333418,-71.1112459,'Y',4,3);

call insert_into_mbta_station(7,'Fenwood Road',02115,42.3352757,-71.1100743,'Y',5,4);

call insert_into_mbta_station(7,'Brigham Circle',02120,42.3346986,-71.1055803,'Y',6,5);

call insert_into_mbta_station(7,'Longwood Medical Area',02115,42.3333418,-71.1112459,'Y',7,6);

call insert_into_mbta_station(7,'Museum Of Fine Arts',02114,42.3393849,-71.0962367,'Y',8,7);

call insert_into_mbta_station(7,'Northeastern University',02115,42.3382446,-71.0907633,'Y',9,8);

call insert_into_mbta_station(7,'Symphony',02115,42.3415241,-71.0890129,'Y',10,9);

call insert_into_mbta_station(7,'Prudential',02115,42.3470606,-71.0839314,'Y',11,10);

call insert_into_mbta_station(7,'Copley',02116,42.350251,-71.0797765,'Y',12,11);

call insert_into_mbta_station(7,'Park Street',02108,42.3558238,-71.0650144,'Y',13,12);

call insert_into_mbta_station(7,'Government Center',02115,42.3597271,-71.061591,'Y',14,13);

call insert_into_mbta_station(7,'Haymarket',02108,42.3628689,-71.0604616,'Y',15,14);

call insert_into_mbta_station(7,'North Station',02114,42.3664463,-71.0641627,'Y',16,15);

call insert_into_mbta_station(7,'Science Park',02114,42.3668341,-71.0699427,'Y',17,16);

call insert_into_mbta_station(7,'Lechmere',02115,42.370949,-71.07964,'Y',-1,17);

----------------------------------------------------------------------------------------
--INSERT SCRIPTS FOR MBTA_PASSENGERFREQUENCY
----------------------------------------------------------------------------------------


INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (1,21,570.59,306.25,'saturday',66,'offpeak');
--Row 2
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (2,21,668.73,325.9,'sunday',67,'offpeak');
--Row 3
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (3,21,482.71,233.77,'weekday',68,'offpeak');
--Row 4
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (4,21,396.04,213.58,'weekday',69,'peak');
--Row 5
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (5,11,566.6,291.81,'saturday',72,'offpeak');
--Row 6
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (6,11,663.65,312.74,'sunday',78,'offpeak');
--Row 7
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (7,11,483.76,229.76,'weekday',77,'offpeak');
--Row 8
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (8,11,393.92,209.21,'weekday',80,'peak');
--Row 9
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (9,17,485.76,280.17,'weekday',82,'offpeak');
--Row 10
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (10,17,403.74,262.55,'weekday',85,'peak');
--Row 11
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (11,17,595,336.39,'saturday',86,'offpeak');
--Row 12
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (12,17,729.19,382.52,'sunday',88,'offpeak');
--Row 13
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (13,17,499.45,248.71,'weekday',89,'offpeak');
--Row 14
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (14,17,429.22,203.96,'weekday',91,'peak');
--Row 15
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (15,16,593.56,371.5,'saturday',92,'offpeak');
--Row 16
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (16,16,715.12,418.28,'sunday',93,'offpeak');
--Row 17
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (17,16,508.36,288.15,'weekday',94,'offpeak');
--Row 18
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (18,16,421.71,274.6,'weekday',95,'peak');
--Row 19
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (19,20,566.33,310.65,'saturday',97,'offpeak');
--Row 20
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (20,16,596.6,327.8,'saturday',98,'offpeak');
--Row 21
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (21,20,674.92,335.56,'sunday',1,'offpeak');
--Row 22
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (22,22,562.79,275.35,'saturday',2,'offpeak');
--Row 23
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (23,16,730.64,380.61,'sunday',3,'offpeak');
--Row 24
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (24,20,489.16,245.14,'weekday',5,'offpeak');
--Row 25
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (25,22,670.58,310.48,'sunday',6,'offpeak');
--Row 26
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (26,22,489.01,223.48,'weekday',7,'offpeak');
--Row 27
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (27,22,392.68,199.33,'weekday',11,'peak');
--Row 28
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (28,23,560.09,263.95,'saturday',12,'offpeak');
--Row 29
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (29,23,655.2,285.95,'sunday',14,'offpeak');
--Row 30
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (30,23,483.56,208.55,'weekday',15,'offpeak');
--Row 31
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (31,23,390.34,191.98,'weekday',16,'peak');
--Row 32
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (32,24,564.86,252.92,'saturday',17,'offpeak');
--Row 33
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (33,24,671.46,285.63,'sunday',18,'offpeak');
--Row 34
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (34,24,479.18,203.23,'weekday',19,'offpeak');
--Row 35
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (35,24,357.41,172.12,'weekday',20,'peak');
--Row 36
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (36,25,570.22,252.03,'saturday',21,'offpeak');
--Row 37
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (37,25,675.01,284.47,'sunday',24,'offpeak');
--Row 38
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (38,25,481.78,197.83,'weekday',27,'offpeak');
--Row 39
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (39,25,361.56,165.13,'weekday',29,'peak');
--Row 40
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (40,26,607.75,249.36,'saturday',32,'offpeak');
--Row 41
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (41,26,739.43,267.8,'sunday',38,'offpeak');
--Row 42
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (42,26,496.88,195.05,'weekday',41,'offpeak');
--Row 43
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (43,26,371.15,158.11,'weekday',42,'peak');
--Row 44
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (44,16,500.22,240.88,'weekday',44,'offpeak');
--Row 45
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (45,16,430.19,196.51,'weekday',46,'peak');
--Row 46
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (46,15,599.38,386.89,'saturday',47,'offpeak');
--Row 47
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (47,15,733.93,440.37,'sunday',48,'offpeak');
--Row 48
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (48,15,508.06,295.72,'weekday',50,'offpeak');
--Row 49
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (49,15,421.43,281.84,'weekday',53,'peak');
--Row 50
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (50,15,620.04,344.84,'saturday',54,'offpeak');
--Row 51
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (51,15,763.36,397.11,'sunday',55,'offpeak');
--Row 52
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (52,15,508.63,250.31,'weekday',56,'offpeak');
--Row 53
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (53,15,447.3,219.03,'weekday',57,'peak');
--Row 54
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (54,14,599.2,389.1,'saturday',58,'offpeak');
--Row 55
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (55,14,726.62,440.3,'sunday',59,'offpeak');
--Row 56
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (56,14,505.97,298.14,'weekday',60,'offpeak');
--Row 57
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (57,14,420.94,284.57,'weekday',61,'peak');
--Row 58
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (58,14,642.4,389.39,'saturday',62,'offpeak');
--Row 59
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (59,14,799.03,440.2,'sunday',63,'offpeak');
--Row 60
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (60,14,519.87,294.89,'weekday',64,'offpeak');
--Row 61
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (61,14,462.88,295.98,'weekday',65,'peak');
--Row 62
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (62,13,610.04,397.68,'saturday',66,'offpeak');
--Row 63
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (63,13,738.53,449.4,'sunday',67,'offpeak');
--Row 64
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (64,13,509.09,306.57,'weekday',68,'offpeak');
--Row 65
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (65,13,425.51,286.53,'weekday',69,'peak');
--Row 66
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (66,13,639.24,383.11,'saturday',70,'offpeak');
--Row 67
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (67,13,795.95,436.22,'sunday',71,'offpeak');
--Row 68
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (68,13,518.2,287.89,'weekday',72,'offpeak');
--Row 69
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (69,13,460.88,288.72,'weekday',73,'peak');
--Row 70
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (70,12,639.52,394.41,'saturday',74,'offpeak');
--Row 71
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (71,12,791.29,454.14,'sunday',75,'offpeak');
--Row 72
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (72,12,520.17,307.24,'weekday',76,'offpeak');
--Row 73
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (73,12,454.22,285.04,'weekday',77,'peak');
--Row 74
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (74,12,641.77,376.75,'saturday',78,'offpeak');
--Row 75
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (75,12,798.63,434.35,'sunday',79,'offpeak');
--Row 76
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (76,12,518.24,280.25,'weekday',80,'offpeak');
--Row 77
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (77,12,462.34,283.35,'weekday',81,'peak');
--Row 78
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (78,11,646.32,397.81,'saturday',82,'offpeak');
--Row 79
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (79,11,802.45,456.98,'sunday',83,'offpeak');
--Row 80
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (80,11,521.39,308.83,'weekday',84,'offpeak');
--Row 81
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (81,11,455.97,288.84,'weekday',85,'peak');
--Row 82
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (82,11,643.57,373.67,'saturday',86,'offpeak');
--Row 83
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (83,11,798.64,430.85,'sunday',87,'offpeak');
--Row 84
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (84,11,517.61,279.21,'weekday',88,'offpeak');
--Row 85
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (85,11,461.16,288.82,'weekday',89,'peak');
--Row 86
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (86,20,399.12,225.84,'weekday',90,'peak');
--Row 87
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (87,20,567.55,335.29,'saturday',91,'offpeak');
--Row 88
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (88,20,680.06,346.26,'sunday',92,'offpeak');
--Row 89
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (89,20,483.11,259.66,'weekday',93,'offpeak');
--Row 90
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (90,20,418.61,228.02,'weekday',94,'peak');
--Row 91
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (91,19,575.57,338.91,'saturday',95,'offpeak');
--Row 92
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (92,19,681.71,364.3,'sunday',96,'offpeak');
--Row 93
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (93,19,488.49,250.97,'weekday',97,'offpeak');
--Row 94
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (94,19,399.24,234.28,'weekday',98,'peak');
--Row 95
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (95,19,615.52,395.13,'saturday',99,'offpeak');
--Row 96
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (96,19,736.14,430.34,'sunday',100,'offpeak');
--Row 97
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (97,19,502.91,275.14,'weekday',101,'offpeak');
--Row 98
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (98,19,433.09,235.43,'weekday',102,'peak');
--Row 99
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (99,18,567.83,363.45,'saturday',103,'offpeak');
--Row 100
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (100,18,661.76,395.78,'sunday',104,'offpeak');
--Row 101
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (101,18,487.29,285.47,'weekday',105,'offpeak');
--Row 102
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (102,18,399.47,262.89,'weekday',106,'peak');
--Row 103
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (103,18,595.95,346.07,'saturday',107,'offpeak');
--Row 104
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (104,18,730.25,397.21,'sunday',108,'offpeak');
--Row 105
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (105,18,497.02,259.85,'weekday',109,'offpeak');
--Row 106
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (106,18,431.81,219.88,'weekday',110,'peak');
--Row 107
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (107,17,563.08,360.15,'saturday',111,'offpeak');
--Row 108
INSERT INTO MBTA_PASSENGERFREQUENCY (FREQUENCYID, STATIONID, AVGSEC, STDSEC, DAYTYPE, PASSENGERID, PEAKINDEX) VALUES (108,17,659.15,391.08,'sunday',112,'offpeak');

COMMIT;
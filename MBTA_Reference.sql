CREATE TABLE mbta_traininfo (
  TrainId Integer NOT NULL,
  TrainSerialNo Integer NOT NULL,
  YearofManufacaturing Date NOT NULL,
  LastServiceDate Date,
  Capacity Integer NOT NULL,
  EmployeeId Integer NOT NULL,
  PRIMARY KEY (TrainId)
)
;
CREATE TABLE mbta_schedule (
  ScheduleId Integer NOT NULL,
  TrainId Integer NOT NULL,
  RouteID Integer NOT NULL,
  TraIntegerime Date NOT NULL,
  PRIMARY KEY (ScheduleId)
)
;

CREATE TABLE mbta_routeinfo (
  RouteId Integer NOT NULL,
  TypeId Integer NOT NULL,
  Route_from varchar(50) NOT NULL,
  Route_to varchar(50) NOT NULL,
  Price varchar(255) NOT NULL,
  Duration Integer NOT NULL,
  Timing varchar(255) NOT NULL,
  PRIMARY KEY (RouteId)
)
;

CREATE TABLE mbta_types (
  TypeId Integer NOT NULL,
  TypeName varchar(25) NOT NULL,
  PRIMARY KEY (TypeId)
)
;
CREATE TABLE mbta_station (
  StationId Integer NOT NULL,
  RouteID Integer NOT NULL,
  StationName varchar(50) NOT NULL,
  Latitude decimal(10,8) NOT NULL,
  Longitude decimal(10,8) NOT NULL,
  StationZipCode Integer NOT NULL,
  StationStatus char(1) NOT NULL,
  PRIMARY KEY (StationId)
)
;

CREATE TABLE mbta_passengerfrequency (
  FrequencyId Integer NOT NULL,
  StationId Integer NOT NULL,
  Avgsec decimal(3,2) NOT NULL,
  Stdsec decimal(3,2) NOT NULL,
  DayType varchar(50) NOT NULL,
  PeakInd Integer NOT NULL,
  PassengerId Integer NOT NULL,
  PRIMARY KEY (FrequencyId)
)
;

CREATE TABLE mbta_trainCurrentStatus (
  TrainId Integer NOT NULL,
  Latitude decimal(10,8) NOT NULL,
  Longitude decimal(10,8) NOT NULL,
  PRIMARY KEY (TrainId)
)
;

CREATE TABLE mbta_passenger (
  PassengerId Integer NOT NULL,
  PassengerFName varchar(25) NOT NULL,
  PassengerLName varchar(25) NOT NULL,
  Dob date NOT NULL,
  Address nvarchar2(255) NOT NULL,
  City nvarchar2(255) NOT NULL,
  State nvarchar2(255) NOT NULL,
  Zipcode Integer NOT NULL,
  PRIMARY KEY (PassengerId)
)
;

CREATE TABLE mbta_login (
  LoginId Integer NOT NULL,
  PassengerId Integer NOT NULL,
  Username varchar(25) NOT NULL,
  Password varchar(25) NOT NULL,
  PRIMARY KEY (LoginId)
)
;

CREATE TABLE mbta_emplogin (
  LoginId Integer NOT NULL,
  EmployeeId Integer NOT NULL,
  Username varchar(25) NOT NULL,
  Password varchar(25) NOT NULL,
  PRIMARY KEY (LoginId)
)
;

CREATE TABLE mbta_charlie (
  CharlieId Integer NOT NULL,
  PassengerId Integer NOT NULL,
  Balance Integer,
  TransactionId Integer NOT NULL,
  CardNumber Integer NOT NULL,
  CvvNo Integer,
  ExpirationDate Date,
  PRIMARY KEY (CharlieId)
)
;

CREATE TABLE mbta_transaction (
  TransactionId Integer NOT NULL,
  PassengerID Integer NOT NULL,
  Amount Integer,
  PRIMARY KEY (TransactionId)
)
;

CREATE TABLE mbta_employee (
  EmployeeId Integer NOT NULL,
  DeptId Integer NOT NULL,
  TrainId Integer NOT NULL,
  Name Varchar(50) NOT NULL,
  Age Integer,
  Address Varchar(50) NOT NULL,
  City Varchar(50) NOT NULL,
  State Varchar(50) NOT NULL,
  Zipcode Integer NOT NULL,
  Doj Date NOT NULL,
  PRIMARY KEY (EmployeeId)
)
;

CREATE TABLE mbta_dept (
  DeptId Integer NOT NULL,
  DeptTypeId Integer NOT NULL,
  Role nvarchar2(255),
  PRIMARY KEY (DeptId)
)
;

CREATE TABLE mbta_depttype (
  DeptTypeId Integer NOT NULL,
  DeptName varchar(50) NOT NULL,
  PRIMARY KEY (DeptTypeId)
)
;

ALTER TABLE mbta_passengerfrequency ADD FOREIGN KEY (StationId) REFERENCES mbta_station (StationId)
;

ALTER TABLE mbta_schedule ADD FOREIGN KEY (TrainId) REFERENCES mbta_traininfo (TrainId)
;

ALTER TABLE mbta_schedule ADD FOREIGN KEY (RouteID) REFERENCES mbta_routeinfo (RouteId)
;

ALTER TABLE mbta_routeinfo ADD FOREIGN KEY (TypeId) REFERENCES mbta_types (TypeId)
;

ALTER TABLE mbta_traininfo ADD FOREIGN KEY (TrainId) REFERENCES mbta_trainCurrentStatus (TrainId)
;

ALTER TABLE mbta_charlie ADD FOREIGN KEY (PassengerId) REFERENCES mbta_passenger (PassengerId)
;

ALTER TABLE mbta_dept ADD FOREIGN KEY (DeptTypeId) REFERENCES mbta_depttype (DeptTypeId)
;

ALTER TABLE mbta_employee ADD FOREIGN KEY (EmployeeId) REFERENCES mbta_emplogin (LoginId)
;

ALTER TABLE mbta_charlie ADD FOREIGN KEY (TransactionId) REFERENCES mbta_transaction (TransactionId)
;

--issues
--Adding Unique Key Constraint on PassengerId in Login Table will solve the FK error on Passenger table
ALTER TABLE mbta_login ADD UNIQUE (PassengerId)
;
ALTER TABLE mbta_passenger ADD FOREIGN KEY (PassengerId) REFERENCES mbta_login (PassengerId)
;

--Updating order, Child should reference Parent, not the other way round
--ALTER TABLE mbta_dept ADD FOREIGN KEY (DeptId) REFERENCES mbta_employee (DeptId)
--;
ALTER TABLE mbta_employee ADD FOREIGN KEY (DeptId) REFERENCES  mbta_dept (DeptId)
;

--Updating reference to refer to Parent Passenger table and not Sibling PassengerFrequency table
--ALTER TABLE mbta_charlie ADD FOREIGN KEY (PassengerId) REFERENCES mbta_passengerfrequency (PassengerId)
--;
--Already Exists, not required
--ALTER TABLE mbta_charlie ADD FOREIGN KEY (PassengerId) REFERENCES mbta_passenger (PassengerId)
--;


--Updating order, Child should reference Parent, not the other way round
--ALTER TABLE mbta_routeinfo ADD FOREIGN KEY (RouteId) REFERENCES mbta_station (ROUTEID)
--;
ALTER TABLE mbta_station ADD FOREIGN KEY (RouteId) REFERENCES mbta_routeinfo (ROUTEID)
;

--Updating order, Child should reference Parent, not the other way round
--ALTER TABLE mbta_employee ADD FOREIGN KEY (EmployeeId) REFERENCES mbta_traininfo (EmployeeId)
--;
ALTER TABLE mbta_traininfo ADD FOREIGN KEY (EmployeeId) REFERENCES mbta_employee (EmployeeId)
;
---end


--ALTER TABLE mbta_transaction ADD CharlieId INTEGER REFERENCES mbta_charlie (CharlieId);

commit;
--


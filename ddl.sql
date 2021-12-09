CREATE TABLE [mbta_traininfo] (
  [TrainId] int NOT NULL,
  [TrainSerialNo] int NOT NULL,
  [YearofManufacaturing] Date NOT NULL,
  [LastServiceDate] Date,
  [Capacity] int NOT NULL,
  PRIMARY KEY ([TrainId])
)
GO

CREATE TABLE [mbta_schedule] (
  [ScheduleId] int NOT NULL,
  [TrainId] int NOT NULL,
  [RouteID] int NOT NULL,
  [TrainTime] Date NOT NULL,
  PRIMARY KEY ([ScheduleId])
)
GO

CREATE TABLE [mbta_routeinfo] (
  [RouteId] int NOT NULL,
  [TypeId] int NOT NULL,
  [Route_from] varchar(50) NOT NULL,
  [Route_to] varchar(50) NOT NULL,
  [Price] varchar(255) NOT NULL,
  [Duration] int NOT NULL,
  [Timing] varchar(255) NOT NULL,
  PRIMARY KEY ([RouteId])
)
GO

CREATE TABLE [mbta_types] (
  [TypeId] int NOT NULL,
  [TypeName] varchar(25) NOT NULL,
  PRIMARY KEY ([TypeId])
)
GO

CREATE TABLE [mbta_station] (
  [StationId] int NOT NULL,
  [RouteID] int NOT NULL,
  [StationName] varchar(50) NOT NULL,
  [Latitude] decimal(10,8) NOT NULL,
  [Longitude] decimal(10,8) NOT NULL,
  [StationZipCode] int NOT NULL,
  [StationStatus] boolean NOT NULL,
  PRIMARY KEY ([StationId])
)
GO

CREATE TABLE [mbta_passengerfrequency] (
  [FrequencyId] int NOT NULL,
  [StationId] int NOT NULL,
  [Avgsec] decimal(3,2) NOT NULL,
  [Stdsec] decimal(3,2) NOT NULL,
  [DayType] varchar(50) NOT NULL,
  [PeakInd] int NOT NULL,
  PRIMARY KEY ([FrequencyId])
)
GO

CREATE TABLE [mbta_trainCurrentStatus] (
  [TrainId] int NOT NULL,
  [Latitude] decimal(10,8) NOT NULL,
  [Longitude] decimal(10,8) NOT NULL,
  PRIMARY KEY ([TrainId])
)
GO

CREATE TABLE [mbta_passenger] (
  [PassengerId] int NOT NULL,
  [PassengerFName] varchar(25) NOT NULL,
  [PassengerLName] varchar(25) NOT NULL,
  [Dob] date NOT NULL,
  [Address] nvarchar(255) NOT NULL,
  [City] nvarchar(255) NOT NULL,
  [State] nvarchar(255) NOT NULL,
  [Zipcode] int NOT NULL,
  PRIMARY KEY ([PassengerId])
)
GO

CREATE TABLE [mbta_login] (
  [LoginId] int NOT NULL,
  [PassengerId] int NOT NULL,
  [Username] varchar(25) NOT NULL,
  [Password] varchar(25) NOT NULL,
  PRIMARY KEY ([LoginId])
)
GO

CREATE TABLE [mbta_charlie] (
  [CharlieId] int NOT NULL,
  [PassengerID] int NOT NULL,
  [Balance] int,
  PRIMARY KEY ([CharlieId])
)
GO

CREATE TABLE [mbta_transaction] (
  [TransactionId] int NOT NULL,
  [PassengerID] int NOT NULL,
  [CardTypeId] int NOT NULL,
  [CardNumber] Varchar(10) NOT NULL,
  [CvvNo] int,
  [ExpirationDate] Date,
  PRIMARY KEY ([TransactionId])
)
GO

CREATE TABLE [mbta_cardtype] (
  [CardTypeId] int NOT NULL,
  [CardType] nvarchar(255) NOT NULL,
  PRIMARY KEY ([CardTypeId])
)
GO

CREATE TABLE [mbta_employee] (
  [EmployeeId] int NOT NULL,
  [DeptId] int NOT NULL,
  [TrainId] int NOT NULL,
  [Name] Varchar(50) NOT NULL,
  [Age] int,
  [Address] Varchar(50) NOT NULL,
  [City] Varchar(50) NOT NULL,
  [State] Varchar(50) NOT NULL,
  [Zipcode] int NOT NULL,
  [Doj] Date NOT NULL,
  PRIMARY KEY ([EmployeeId])
)
GO

CREATE TABLE [mbta_dept] (
  [DeptId] int NOT NULL,
  [DeptTypeId] int NOT NULL,
  [DeptRoleId] int,
  PRIMARY KEY ([DeptId])
)
GO

CREATE TABLE [mbta_depttype] (
  [DeptTypeId] int NOT NULL,
  [DeptName] varchar(50) NOT NULL,
  PRIMARY KEY ([DeptTypeId])
)
GO

ALTER TABLE [mbta_passengerfrequency] ADD FOREIGN KEY ([StationId]) REFERENCES [mbta_station] ([StationId])
GO

ALTER TABLE [mbta_schedule] ADD FOREIGN KEY ([TrainId]) REFERENCES [mbta_traininfo] ([TrainId])
GO

ALTER TABLE [mbta_schedule] ADD FOREIGN KEY ([RouteID]) REFERENCES [mbta_routeinfo] ([RouteId])
GO

ALTER TABLE [mbta_routeinfo] ADD FOREIGN KEY ([TypeId]) REFERENCES [mbta_types] ([TypeId])
GO

ALTER TABLE [mbta_traininfo] ADD FOREIGN KEY ([TrainId]) REFERENCES [mbta_trainCurrentStatus] ([TrainId])
GO

ALTER TABLE [mbta_routeinfo] ADD FOREIGN KEY ([RouteId]) REFERENCES [mbta_station] ([RouteID])
GO

ALTER TABLE [mbta_charlie] ADD FOREIGN KEY ([PassengerID]) REFERENCES [mbta_passenger] ([PassengerId])
GO

ALTER TABLE [mbta_cardtype] ADD FOREIGN KEY ([CardTypeId]) REFERENCES [mbta_transaction] ([CardTypeId])
GO

ALTER TABLE [mbta_passenger] ADD FOREIGN KEY ([PassengerId]) REFERENCES [mbta_login] ([PassengerId])
GO

ALTER TABLE [mbta_dept] ADD FOREIGN KEY ([DeptTypeId]) REFERENCES [mbta_depttype] ([DeptTypeId])
GO

ALTER TABLE [mbta_dept] ADD FOREIGN KEY ([DeptId]) REFERENCES [mbta_employee] ([DeptId])
GO


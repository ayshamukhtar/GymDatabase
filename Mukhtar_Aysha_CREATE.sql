
CREATE TABLE Member (
    Member_ID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DOB DATE,
    MembershipType VARCHAR(30),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(100)
);


CREATE TABLE Trainer (
    Trainer_ID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Specialization VARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10,2),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Certification VARCHAR(100)
);


CREATE TABLE WorkoutClass (
    Class_ID INT PRIMARY KEY,
    ClassName VARCHAR(50),
    Level VARCHAR(30),
    Description TEXT,
    Participants INT,
    StartTime TIME,
    EndTime TIME,
    Day VARCHAR(15)
);


CREATE TABLE WorkoutPlan (
    Plan_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Goal VARCHAR(100),
    Duration INT,
    Intensity VARCHAR(20),
    Description TEXT,
    CreationDate DATE,
    Notes TEXT
);


CREATE TABLE Facility (
    Facility_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Type VARCHAR(30),
    OpenTime TIME,
    CloseTime TIME,
    Capacity INT,
    Location VARCHAR(50),
    Status VARCHAR(30)
);

CREATE TABLE Equipment (
    Equip_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Type VARCHAR(30),
    PurchaseDate DATE,
    EquipCondition VARCHAR(30),
    Maintenance VARCHAR(100),
    Brand VARCHAR(50),
    Location VARCHAR(50)
);


CREATE TABLE Payment (
    Payment_ID INT PRIMARY KEY,
    MemberID INT,
    Amount DECIMAL(10,2),
    Date DATE,
    Method VARCHAR(30),
    Status VARCHAR(30),
    ReceiptNo VARCHAR(30),
    MembershipTime INT,
    FOREIGN KEY (MemberID) REFERENCES Member(Member_ID)
);


CREATE TABLE Schedule (
    Schedule_ID INT PRIMARY KEY,
    TrainerID INT,
    StartTime TIME,
    EndTime TIME,
    Day VARCHAR(15),
    Room VARCHAR(30),
    Availability VARCHAR(20),
    AssignedClass INT,
    FOREIGN KEY (TrainerID) REFERENCES Trainer(Trainer_ID),
    FOREIGN KEY (AssignedClass) REFERENCES WorkoutClass(Class_ID)
);

CREATE TABLE Member_Equipment (
    Member_ID INT,
    Equip_ID INT,
    PRIMARY KEY (Member_ID, Equip_ID),
    FOREIGN KEY (Member_ID) REFERENCES Member(Member_ID),
    FOREIGN KEY (Equip_ID) REFERENCES Equipment(Equip_ID)
);

CREATE TABLE Member_WorkoutClass (
    Member_ID INT,
    Class_ID INT,
    PRIMARY KEY (Member_ID, Class_ID),
    FOREIGN KEY (Member_ID) REFERENCES Member(Member_ID),
    FOREIGN KEY (Class_ID) REFERENCES WorkoutClass(Class_ID)
);

CREATE TABLE Trainer_Equipment (
    Trainer_ID INT,
    Equip_ID INT,
    PRIMARY KEY (Trainer_ID, Equip_ID),
    FOREIGN KEY (Trainer_ID) REFERENCES Trainer(Trainer_ID),
    FOREIGN KEY (Equip_ID) REFERENCES Equipment(Equip_ID)
);

CREATE TABLE Trainer_WorkoutPlan (
    Trainer_ID INT,
    Plan_ID INT,
    PRIMARY KEY (Trainer_ID, Plan_ID),
    FOREIGN KEY (Trainer_ID) REFERENCES Trainer(Trainer_ID),
    FOREIGN KEY (Plan_ID) REFERENCES WorkoutPlan(Plan_ID)
);

CREATE TABLE Equipment_Facility (
    Equip_ID INT,
    Facility_ID INT,
    PRIMARY KEY (Equip_ID, Facility_ID),
    FOREIGN KEY (Equip_ID) REFERENCES Equipment(Equip_ID),
    FOREIGN KEY (Facility_ID) REFERENCES Facility(Facility_ID)
);

CREATE TABLE Member_Facility (
    Member_ID INT,
    Facility_ID INT,
    PRIMARY KEY (Member_ID, Facility_ID),
    FOREIGN KEY (Member_ID) REFERENCES Member(Member_ID),
    FOREIGN KEY (Facility_ID) REFERENCES Facility(Facility_ID)
);

CREATE TABLE Member_WorkoutPlan (
    Member_ID INT,
    Plan_ID INT,
    PRIMARY KEY (Member_ID, Plan_ID),
    FOREIGN KEY (Member_ID) REFERENCES Member(Member_ID),
    FOREIGN KEY (Plan_ID) REFERENCES WorkoutPlan(Plan_ID)
);




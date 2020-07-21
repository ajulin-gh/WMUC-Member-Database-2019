USE BMGT402_Project_0401_10

CREATE TABLE Show (
	sName VARCHAR (50) Not Null,
	sPlatform CHAR (2),
	sDOW VARCHAR (10),
	sTOD CHAR (4),
	CONSTRAINT pk_Show_sName PRIMARY KEY (sName) );

CREATE TABLE Members(
	mNum SMALLINT NOT NULL,
	sName VARCHAR(50),
	mFirst VARCHAR(15),
	mLast VARCHAR(20),
	mDOB DATE,
	mClass VARCHAR(9),
	mDateJoined DATE,
	CONSTRAINT pk_Members_mNum PRIMARY KEY(mNum),
	CONSTRAINT fk_Members_sName FOREIGN KEY(sName)
	REFERENCES Show(sName)
		ON DELETE CASCADE
		ON UPDATE CASCADE);

CREATE TABLE ExecutiveStaff(
	ePosition VARCHAR(30) NOT NULL,
	eOfficeNum CHAR(2),
	eHours  CHAR(4),
	Constraint pk_ExecutiveStaff_ePosition PRIMARY KEY (ePosition));

CREATE TABLE Team(
	tName VARCHAR (20) NOT NULL,
	ePosition VARCHAR(30),
	tDayMeet VARCHAR (30),
	tTOD CHAR (4), 
	CONSTRAINT pk_Team_tName PRIMARY KEY (tName),
	CONSTRAINT fk_Team_ePosition FOREIGN KEY (ePosition)
		REFERENCES ExecutiveStaff (ePosition)
		ON DELETE CASCADE
		ON UPDATE CASCADE);

CREATE TABLE Participate(
	tName VARCHAR (20),
	mNum SMALLINT,
	CONSTRAINT pk_Participate_tName_mNum PRIMARY KEY (tName,mNum),
	CONSTRAINT fk_Participate_tName FOREIGN KEY (tName)
		REFERENCES Team (tName),
	CONSTRAINT fk_Participate_mNum FOREIGN KEY (mNum)
		REFERENCES Members (mNum)
		ON DELETE CASCADE
		ON UPDATE CASCADE);

CREATE TABLE ProjectWMUC(
	pNum SMALLINT NOT NULL,
	tName VARCHAR(20),
	pName VARCHAR(20),
	pStartDate DATE,
	pExpEndDate DATE,
	CONSTRAINT pk_ProjectWMUC_pNum PRIMARY KEY (pNum),
	CONSTRAINT fk_ProjectWMUC_tName FOREIGN KEY(tName)
	REFERENCES Team(tName)
		ON DELETE CASCADE
		ON UPDATE CASCADE);
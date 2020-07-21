USE BMGT402_Project_0401_10

CREATE VIEW PublicMemberInformation(mFirst, mLast, sName, sDOW, sTOD, sPlatform)
AS SELECT m.mFirst, m.mLast, s.sName, s.sDOW, s.sTOD, s.sPlatform 
FROM Members m, Show s
WHERE m.sName=s.sName;

CREATE VIEW PresidentView
AS SELECT *
FROM Members

CREATE VIEW TreasurerView
AS SELECT m.*
FROM Members m, Participate p
WHERE m.mNum=p.mNum AND p.tName='Business'

CREATE VIEW GraphicDesignView
AS SELECT m.*
FROM Members m, Participate p
WHERE m.mNum=p.mNum AND p.tName='Graphic Design'

SELECT *
FROM PresidentView

SELECT *
FROM TreasurerView

SELECT *
FROM PublicMemberInformation

SELECT *
FROM GraphicDesignView
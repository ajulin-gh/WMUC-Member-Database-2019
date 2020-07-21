USE BMGT402_Project_0401_10

--Q1. How many shows are on each day of the week?

SELECT s.sDOW, COUNT(s.sName) AS 'Number of Shows'
FROM Show s
GROUP BY s.sDOW
ORDER BY COUNT(s.sName) DESC

--Q2. How many members are working under each Executive Staff?

SELECT es.ePosition, COUNT(p.mNum) AS 'Number of Members'
FROM ExecutiveStaff es, Team t, Participate p
WHERE es.ePosition=t.ePosition AND t.tName=p.tName
GROUP BY es.ePosition

--Q3. How many members are on each team?

SELECT t.tName, COUNT(m.mNum) AS 'Number of Members'
FROM Members m, Participate p, Team t
WHERE m.mNum=p.mNum AND p.tName=t.tName
GROUP BY t.tName

--Q4. What is the class breakdown of all the members?

SELECT mClass, COUNT(mNum) AS 'Number of Members'
FROM Members
GROUP BY mClass

--Q5. How many shows are there on Monday?

SELECT COUNT(s.sName) AS 'Monday Shows' 
FROM Show s
WHERE sDOW = 'Monday'

--Q6. What are the names of the sophomore DJs at WMUC?

SELECT mFirst AS 'First Name', mLast AS 'Last Name'
FROM Members
WHERE mClass= 'Sophomore'

--Q7. To prepare a group celebration, which members have a birthday in December?

SELECT m.mFirst, m.mLast, m.mDOB
FROM Members m
WHERE m.mDOB LIKE '%-12-%'

--Q8. Who are the Executive Staff that are currently working and the project and what are those project's names?

SELECT es.ePosition, p.pName
FROM ExecutiveStaff es, Team t, ProjectWMUC p
WHERE es.ePosition=t.ePosition AND t.tName=p.tName

--Q9. What are the names of the shows that are during the same time as the Business Manager's Office Hours?

SELECT s.sName
FROM Show s
WHERE s.sTOD=(
	SELECT es.eHours
	FROM ExecutiveStaff es
	WHERE es.ePosition='Treasurer')

CREATE DATABASE tit_db;
USE tit_db;
SELECT * FROM titanic LIMIT 10;

-- seggregation by age
SELECT name,age
FROM titanic 
WHERE age>50;

-- analysis based on sex and age
SELECT name,age
FROM titanic 
WHERE age>50 AND sex='female';

SELECT count(age)
FROM titanic 
WHERE age>50 AND sex='female';

SELECT count(age)
FROM titanic 
WHERE age>50 AND sex='male';

SELECT name,age
FROM titanic 
WHERE age>50 AND sex='male';

SELECT name,age,pclass
FROM titanic 
WHERE age BETWEEN 30 AND 50 AND sex='female' AND pclass=1;

-- analyzing basic information
SELECT COUNT(*) FROM titanic;

SELECT AVG(age) FROM titanic;

SELECT MAX(age) FROM titanic;

SELECT MIN(age) FROM titanic;

SELECT SUM(fare) FROM titanic;


-- Survival Rate Analysis
SELECT passengerID,name
FROM titanic
WHERE survived=1;

SELECT COUNT(*)
FROM titanic
WHERE survived=1;

SELECT COUNT(*)
FROM titanic 
WHERE survived=1 AND sex='female';

SELECT COUNT(*)
FROM titanic 
WHERE survived=1 AND sex='male';

SELECT COUNT(survived)
FROM titanic 
WHERE survived=1 AND age>50;

SELECT Pclass, COUNT(*) as TOTAL_PASSENGERS
FROM titanic
GROUP BY Pclass; 

SELECT Pclass, COUNT(*) as PASSENGER_SURVIVED
FROM titanic
WHERE survived=1
GROUP BY Pclass
ORDER BY Pclass;

SELECT Pclass, COUNT(*) as PASSENGER_SURVIVED
FROM titanic
WHERE survived=1 AND sex='female'
GROUP BY Pclass
ORDER BY Pclass;

SELECT Pclass, COUNT(*) as PASSENGER_SURVIVED
FROM titanic
WHERE survived=1 AND sex='male'
GROUP BY Pclass
ORDER BY Pclass;

SELECT Pclass, COUNT(*) as passengers_survived
FROM titanic
WHERE survived=1 AND age>50
GROUP BY Pclass
ORDER BY Pclass;

SELECT (SUM(survived)*100/count(*)) as survival_percentage, Pclass
FROM titanic
GROUP BY Pclass;

-- Fare Analysis 
SELECT passengerid,name 
FROM titanic
WHERE fare>(SELECT AVG(fare) FROM titanic);

SELECT count(*)
 FROM titanic
 WHERE fare>(SELECT AVG(fare) FROM titanic);






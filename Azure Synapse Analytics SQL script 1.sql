-- Count number of athletes per from each country

SELECT Country, COUNT(*) as TotalAthletes
FROM athletes
GROUP BY Country
ORDER BY TotalAthletes DESC;

-- Total number of medals per country

SELECT Team_Country,
sum(Gold) Total_Gold,
sum(Silver) Total_Silver,
sum(Bronze) Total_Bronze

FROM medals
GROUP BY Team_Country
ORDER BY Total_Gold DESC;


-- Calculate the average number of entries by gender for each discipline

SELECT Discipline,
AVG(Female) Avg_Female,
AVG(Male) Avg_Male
FROM  entriesgender
WHERE Discipline = 'Skateboarding'
GROUP BY Discipline;




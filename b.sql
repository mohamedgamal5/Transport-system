SELECT * 
FROM Vacancy
WHERE Vacancy.VacancyID NOT IN (select Applyfor.VacancyID from ApplyFor where VacancyDate>getdate()-30) 





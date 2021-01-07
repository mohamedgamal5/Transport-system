SELECT * 
FROM Employer
WHERE Employer.EmployerID NOT IN (select Vacancy.EmployerID from vacancy where VacancyDate>getdate()-30) 


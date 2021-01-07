SELECT top 1 Employer.EmployerID, Employer.FirstName, Employer.LastName,s.counting
FROM (SELECT COUNT(vacancyID)AS counting, EmployerID FROM vacancy
where VacancyDate>getdate()-30
GROUP BY EmployerID )as s,Employer
where s.EmployerID=Employer.EmployerID 
order by s.counting DESC

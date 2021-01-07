SELECT top 1 vacancy.title ,COUNT(ApplyFor.ApplicantID)AS counting
FROM ApplyFor,vacancy
where vacancy.VacancyID =ApplyFor.VacancyID 
GROUP BY title 
order by counting DESC;

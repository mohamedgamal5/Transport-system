SELECT Applicant.ApplicantID, Applicant.FirstName,Applicant.LastName,Applicant.Gender,s.counting
FROM (SELECT  Applicant.ApplicantID,COUNT(ApplyFor.VacancyID)AS counting
FROM ApplyFor,Applicant
where Applicant.ApplicantID = ApplyFor.ApplicantID
GROUP BY Applicant.ApplicantID )as s FULL OUTER JOIN Applicant
on s.ApplicantID=Applicant.ApplicantID 



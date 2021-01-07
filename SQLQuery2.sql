CREATE TABLE Employer (
    EmployerID int NOT NULL PRIMARY KEY IDENTITY,
    FirstName varchar(25) NOT NULL,
	LastName varchar(25) NOT NULL,
	Gender varchar(10)  NOT NULL CHECK (Gender = 'male' or Gender = 'female'),
    Industry varchar(25) NOT NULL,
	Country varchar(25) NOT NULL,
	City varchar(25) NOT NULL,
	Street varchar(25) NOT NULL, 
);
CREATE TABLE CV (
	Certificate varchar(100),
    Experience varchar(100),
);
CREATE TABLE Applicant (
    ApplicantID int NOT NULL PRIMARY KEY IDENTITY,
    FirstName varchar(25) NOT NULL,
	LastName varchar(25) NOT NULL,
	Gender varchar(10)  NOT NULL CHECK (Gender = 'male' or Gender = 'female'),
    CurrentJob varchar(25) NULL DEFAULT 'non-working',
	Country varchar(25) NOT NULL,
	City varchar(25) NOT NULL,
	Street varchar(25) NOT NULL, 
);
CREATE TABLE Vacancy (
    VacancyID int NOT NULL PRIMARY KEY IDENTITY,
    Title varchar(25) NOT NULL,
	Certificate varchar(100),
	Sex varchar(10)  NOT NULL CHECK (Sex = 'male' or Sex = 'female' or Sex = 'Both') DEFAULT 'Both',
    Experience varchar(100),
	EmployerID int FOREIGN KEY (EmployerID) REFERENCES Employer(EmployerID) NOT NULL,
    VacancyDate date DEFAULT GETDATE() NOT NULL,
);
CREATE TABLE ApplyFor (
	VacancyID int NOT NULL FOREIGN KEY (vacancyID) REFERENCES Vacancy(vacancyID),
    ApplicantID int FOREIGN KEY (ApplicantID) REFERENCES Applicant(ApplicantID) NOT NULL,
	VacancyDate date DEFAULT GETDATE() NOT NULL,
);
-- To create database
create database Hospitals;
use Hospitals;


create table Patients (
  PatientID INT,
  PatientName VARCHAR(50),
  Age INT,
  Gender VARCHAR(10),
  AdmissionDate DATE
);

-- alter : modify the table
-- Add new columns
ALTER TABLE Patients
ADD DoctorAssigned VARCHAR(50);

ALTER TABLE Patients
MODIFY COLUMN PatientName VARCHAR(100);

TRUNCATE TABLE Patient_Info;
DROP TABLE Patient_Info;
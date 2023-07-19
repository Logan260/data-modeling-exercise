
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(50),
    specialization VARCHAR(50),
    contact_info VARCHAR(100)

);


CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(50),
    date_of_birth DATE,
    contact_info VARCHAR(100)

);

CREATE TABLE Diseases (
    disease_id INT PRIMARY KEY,
    disease_name VARCHAR(100),
    description TEXT

);


CREATE TABLE Visits (
    visit_id INT PRIMARY KEY,
    doctor_id INT,
    patient_id INT,
    visit_date DATE
);

CREATE TABLE Diagnoses (
    diagnosis_id INT PRIMARY KEY,
    visit_id INT,
    disease_id INT
);
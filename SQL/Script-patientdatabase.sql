CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    date DATE,
    patient_name VARCHAR(100),
    age INT,
    weight DECIMAL(5,2),
    gender VARCHAR(10),
    location VARCHAR(100),
    phone_number VARCHAR(20),
    disease VARCHAR(100),
    doctor_name VARCHAR(100),
    doctor_id INT
);
--insert values into the patients table
INSERT INTO patients (date, patient_id, patient_name, age, weight, gender, location, phone_number, disease, doctor_name, doctor_id) VALUES
('2019-06-15','AP2021','Sarath',67,76,'Male','Chennai','5462829','Cardiac','Mohan',21),
('2019-02-13','AP2022','John',62,80,'Male','Banglore','1234731','Cancer','Suraj',22),
('2018-01-08','AP2023','Henry',43,65,'Male','Kerala','9028320','Liver','Mehta',23),
('2020-02-04','AP2024','Carl',56,72,'Female','Mumbai','9293829','Asthma','Karthik',24),
('2017-09-15','AP2025','Shikar',55,71,'Male','Delhi','7821281','Cardiac','Mohan',21),
('2018-07-22','AP2026','Piyush',47,59,'Male','Haryana','8912819','Cancer','Suraj',22),
('2017-03-25','AP2027','Stephen',69,55,'Male','Gujarat','8888211','Liver','Mehta',23),
('2019-04-22','AP2028','Aaron',75,53,'Male','Banglore','9012192','Asthma','Karthik',24);

--total number of patients
 SELECT count(*) AS total_patients 
 FROM patients;

--display the patient id and patient name with the current date
SELECT patient_id,patient_name, current_date AS today
FROM patients;


--display the old patient name and the new patient name in uppercase
SELECT patient_name AS old_name,
upper (patient_name)AS new_name
FROM patients;

--display the patients' names along with the total number of characters in their name
SELECT patient_name,
       LENGTH(patient_name) AS name_length
FROM patients;

--combine the patient's name and the doctor's name in a new column
 SELECT CONCAT(patient_name, ' + ', doctor_name) AS full_names
FROM patients;

--to extract the year for a given date and place it in a separate column

SELECT patient_name,
       substr(date, 7, 4) AS year_only
FROM patients;



--display duplicate entries in the doctor name column
SELECT doctor_name
FROM patients
GROUP BY doctor_name
HAVING COUNT(*) > 1;


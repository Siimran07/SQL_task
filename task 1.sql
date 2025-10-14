create table patients (
patient_id serial primary key,
first_name varchar,
last_name varchar,
age int,
gender varchar,
blood_group varchar,
phone varchar,
city varchar
);

insert into patients (patient_id,first_name,last_name,age,gender,blood_group,phone,city)
values(1,'Amit','Kumar',30,'Male','A+','9823450967','Nagpur');

select * from patients;

copy patients from 'D:\Data Analytics\SQL\task\patients.csv' DELIMITER ',' csv header;

create table doctors (
doctor_id serial primary key,
first_name varchar,
last_name varchar,
department varchar,
email varchar,
phone varchar,
experience int,
office varchar
);

insert into doctors (doctor_id,first_name,last_name,department,email,phone,experience,office)
values(1,'Dr.Mehta','Rajesh','Cardiology','mehta@gmail.com','9865109245',15,'C101');

select * from doctors;

copy doctors from 'D:\Data Analytics\SQL\task\doctors.csv' DELIMITER ',' csv header;

create table appointments (
appointment_id serial primary key,
patient_id int,
doctor_id int,
appointment_date date,
appointment_time time,
status varchar,
remarks varchar,
room_no varchar
);

insert into appointments (appointment_id,patient_id,doctor_id,appointment_date,appointment_time,status,remarks,room_no)
values(1,2,5,'2025-10-15','10:00','Scheduled','First visit','C102');

select * from appointments;

copy appointments from 'D:\Data Analytics\SQL\task\appointments.csv' DELIMITER ',' csv header;

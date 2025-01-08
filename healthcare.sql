use etl;
select * from healthcare;
 
#1.	Retrieve the names of all patients in the database. 
select name from healthcare; 

#2.	List the unique medical conditions present in the dataset. 
select distinct(Medical_Condition) from healthcare;
 
#3.	Find the total number of doctors in the healthcare system. 
select count(doctor) from healthcare;

#4.	Retrieve the details of all female patients.  
select * from healthcare where gender='female';

#5.	what is the average age of patients in the database. 
select avg(age) from healthcare;

#6.	Identify the patients who have more than one medical condition.  
select name,count(medical_condition) from healthcare group  by name having count(medical_condition)>1;


#7.	List the names of all doctors. 
select doctor from healthcare; 
#8.Identify the most common medical condition among patients. 
select medical_condition,count(*) from healthcare group by medical_condition order by count(medical_condition)desc limit 1;
# 9.Find the patients who are older than 60 years and have diabetes. 
select name,age,medical_condition from healthcare where age>60 and medical_condition='diabetes';
#10.Calculate the total revenue generated by the healthcare system.
select sum(Billing_Amount)from healthcare;
  
#11.Find the doctor with the oldest patient. 
select doctor,name,age from healthcare order by age desc limit 1;

 #12.Calculate the average duration of medical visits.
 select avg(datediff(Discharge_Date,Date_of_Admission)) from healthcare;
 
 #13.Give the names of patients whose name starts with A.  
 select name from healthcare where name like 'a%';
 
#14.How many male and female patients are there in dataset.  
select gender,count(gender)from healthcare group by gender;

#15.how many patients are normal.  
select test_results,count(test_results) from healthcare where Test_Results='normal';

#16.how many patients are abnormal or Inconclusive. 
select test_results,count(test_results) from healthcare where Test_Results='Abnormal' or test_results='Inconclusive' group by Test_Results;

 #17.how many patients of blood group AB+ are there of age above 52.  
 select count(name) from healthcare where blood_type='AB+' and age>52;
 
#18.	how many patients have paid the bill above 24890.
select count(name) from healthcare where Billing_Amount>24890;
  
#19.	what are the names of patients having Asthma. 
select name,medical_condition from healthcare where medical_condition='Asthma';
 
#20.	how many patients have cancer. 
select count(name) from healthcare where medical_condition='cancer'; 


#21.	what are the names and blood groups of patients admitted to room no. 292. 
select name,blood_type from healthcare where Room_Number='292';
 
#22.	how many males have Arthritis. 
select count(gender) from healthcare where gender='male' and medical_condition='Arthritis';

#23.	How many patients were admitted to Harris and Sons hospital.  
select count(name) from healthcare where hospital='Harris and sons';

#24.	what are the names of patients whose Insurance Provider are Cigna. 
select name,Insurance_Provider from healthcare where Insurance_Provider='cigna';
 
#25.	Name the Medical Condition having patients whose ages is greater than average age 
select medical_condition from healthcare where age>(select avg(age) from healthcare)group by medical_condition;


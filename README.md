###Human Resource Management System


### Feaure 1: Employeer Details

Query:


```sql
drop table employeer_details;
create table employeer_details(
emp_id number,
emp_name varchar2(30) not null,
gender char(1) not null,
email varchar2(25) not null,
mobile number unique,
city varchar2(30) not null,
branch_of_study varchar2(25) not null,
year_of_graduation number not null,
dob date not null,
date_of_joining timestamp not null,
experience char(1) not null,
constraint emp_id_pk primary key(emp_id),
constraint gender_ck check(gender in('M','F')),
constraint experience_cq check(experience in('Y','N'))
);

insert into employeer_details(emp_id,emp_name,gender,email,mobile,city,branch_of_study,year_of_graduation,dob,date_of_joining,experience)
values(1,'ARJUN','M','arjun@gmail.com',8838844897,'madurai','mechanical_engineering',2020,to_date('01-05-1998','DD-MM-YYYY'),to_date('18-12-2020','DD-MM-YYYY'),'N');
insert into employeer_details(emp_id,emp_name,gender,email,mobile,city,branch_of_study,year_of_graduation,dob,date_of_joining,experience)
values(2,'KUMAR','M','kumar@gmail.com',9842144897,'madurai','mechanical_engineering',2017,to_date('01-01-1997','DD-MM-YYYY'),to_date('18-12-2019','DD-MM-YYYY'),'Y');
insert into employeer_details(emp_id,emp_name,gender,email,mobile,city,branch_of_study,year_of_graduation,dob,date_of_joining,experience)
values(3,'KARTHICK','M','karthick@gmail.com',8643066677,'madurai','computer_engineering',2015,to_date('05-06-1996','DD-MM-YYYY'),to_date('18-12-2016','DD-MM-YYYY'),'Y');
insert into employeer_details(emp_id,emp_name,gender,email,mobile,city,branch_of_study,year_of_graduation,dob,date_of_joining,experience)
values(4,'BABU','M','babu@gmail.com',9025655639,'madurai','computer_engineering',2019,to_date('06-05-1999','DD-MM-YYYY'),to_date('18-12-2020','DD-MM-YYYY'),'N');
insert into employeer_details(emp_id,emp_name,gender,email,mobile,city,branch_of_study,year_of_graduation,dob,date_of_joining,experience)
values(5,'AHARISH','M','aharish@gmail.com',9084576453,'theni','electrical_engineering',2018,to_date('04-03-1997','DD-MM-YYYY'),to_date('21-02-2019','DD-MM-YYYY'),'Y');
insert into employeer_details(emp_id,emp_name,gender,email,mobile,city,branch_of_study,year_of_graduation,dob,date_of_joining,experience)
values(6,'ARUN','M','arun@gmail.com',9994902630,'chennai','mca',2017,to_date('05-05-1999','DD-MM-YYYY'),to_date('21-02-2020','DD-MM-YYYY'),'Y');
insert into employeer_details(emp_id,emp_name,gender,email,mobile,city,branch_of_study,year_of_graduation,dob,date_of_joining,experience)
values(7,'AJITH','M','ajith@gmail.com',9876543890,'coimbatore','mca',2016,to_date('09-09-1999','DD-MM-YYYY'),to_date('05-05-2020','DD-MM-YYYY'),'Y');
insert into employeer_details(emp_id,emp_name,gender,email,mobile,city,branch_of_study,year_of_graduation,dob,date_of_joining,experience)
values(8,'GANESH','M','ganesh@gmail.com',8975462398,'palani','mechanical_engineering',2018,to_date('10-09-1997','DD-MM-YYYY'),to_date('05-05-2019','DD-MM-YYYY'),'Y');
insert into employeer_details(emp_id,emp_name,gender,email,mobile,city,branch_of_study,year_of_graduation,dob,date_of_joining,experience)
values(9,'ARAVIND','M','aravind@gmail.com',9787658765,'trichy','electrical_engineering',2019,to_date('14-11-1998','DD-MM-YYYY'),to_date('07-08-2020','DD-MM-YYYY'),'Y');
insert into employeer_details(emp_id,emp_name,gender,email,mobile,city,branch_of_study,year_of_graduation,dob,date_of_joining,experience)
values(10,'VIDYA','F','vidya@gmail.com',9875468970,'villupuram','electrical_engineering',2020,to_date('12-11-1999','DD-MM-YYYY'),to_date('07-08-2020','DD-MM-YYYY'),'N');
SELECT * FROM employeer_details;

table 1:employeers_details


| EMP_ID | NAME     | GENDER | EMAIL              | MOBILE     | CITY       | BRANCH_OF_STUDY              | YEAR OF GRADUATION | DOB        | DATE_OF_JOINING | EXPERIENCED |
|--------|----------|--------|--------------------|------------|------------|------------------------------|--------------------|------------|-----------------|-------------|
| 1      | ARJUN    | m      | arjun@gmail.com    | 8838844897 | madurai    | mechanical_engineering       | 2020               | 01-05-1998 | 18-12-2020      | n           |
| 2      | KUMAR    | m      | kumar@gmail.com    | 9842144897 | madurai    | mechanical_engineering       | 2017               | 01-01-1997 | 18-12-2019      | y          |
| 3      | karthick | m      | karthick@gmail.com | 8643066677 | madurai    | computer_science engineering | 2015               | 05-06-1996 | 18-12-2016      | y           |
| 4      | babu     | m      | babu@gmail.com     | 9025655639 | madurai    | computer_science engineering | 2019               | 06-05-1999 | 18-12-2020      | n           |
| 5      | aharish  | m      | aharish@gmail.com  | 9084576453 | theni      | electrial_engineering        | 2018               | 04-03-1997 | 21-02-2019      | y           |
| 6      | arun     | m      | arun@gmail.com     | 9994902630 | chennai    | mca                          | 2017               | 05-05-1996 | 21-02-2020      | y           |
| 7      | ajith    | m      | ajith@gmail.com    | 9876543890 | coimbatore | mca                          | 2016               | 09-09-1995 | 05-05-2020      | y           |
| 8      | ganesh   | m      | ganesh@gmail.com   | 8975462398 | palani     | mechanical_engineering       | 2018               | 10-09-1997 | 05-05-2019      | y           |
| 9      | aravind  | m      | aravind@gmail.com  | 9787658765 | trichy     | electrial engineering        | 2019               | 14-11-1998 | 07-08-2020      | y           |
| 10     | vidya    | f      | vidya@gmail.com    | 9875468970 | villupuram | electrial engineering        | 2020               | 12-11-1999 | 07-08-2020     | n           |


```

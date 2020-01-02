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

###Feature 2:Post Experience Details


Query:


```sql

drop table post_experience_details;

create table post_experience_details(
emp_id number not null,
year_of_experience number not null,
date_of_joining timestamp,
date_of_leaving timestamp,
designation varchar2(25) not null,
company_name varchar2(25) not null,
constraint empl_id_fk foreign key(emp_id) references employeer_details(emp_id)
);

insert into post_experience_details(emp_id,year_of_experience,date_of_joining,date_of_leaving,designation,company_name)
values(2,2,to_date('17-12-2017','DD-MM-YYYY'),to_date('17-12-2019','DD-MM-YYYY'),'developer','cts');
insert into post_experience_details(emp_id,year_of_experience,date_of_joining,date_of_leaving,designation,company_name)
values(3,1,to_date('17-12-2015','DD-MM-YYYY'),to_date('17-12-2016','DD-MM-YYYY'),'developer','zoho');
insert into post_experience_details(emp_id,year_of_experience,date_of_joining,date_of_leaving,designation,company_name)
values(5,1,to_date('20-02-2018','DD-MM-YYYY'),to_date('20-02-2019','DD-MM-YYYY'),'developer','tcs');
insert into post_experience_details(emp_id,year_of_experience,date_of_joining,date_of_leaving,designation,company_name)
values(6,3,to_date('20-02-2017','DD-MM-YYYY'),to_date('20-02-2020','DD-MM-YYYY'),'hr','tcs_digital');
insert into post_experience_details(emp_id,year_of_experience,date_of_joining,date_of_leaving,designation,company_name)
values(7,4,to_date('03-05-2016','DD-MM-YYYY'),to_date('03-05-2020','DD-MM-YYYY'),'hr','wibro');
insert into post_experience_details(emp_id,year_of_experience,date_of_joining,date_of_leaving,designation,company_name)
values(8,1,to_date('03-05-2018','DD-MM-YYYY'),to_date('03-05-2019','DD-MM-YYYY'),'developer','infosys');
insert into post_experience_details(emp_id,year_of_experience,date_of_joining,date_of_leaving,designation,company_name)
values(9,1,to_date('05-08-2019','DD-MM-YYYY'),to_date('05-08-2020','DD-MM-YYYY'),'testing','lnt');

SELECT * FROM post_experience_details;

table 2:post_experience_details:


| emp_id | years_of_expriences | date_of_joining | date_of_ending | designation | company_name |
|--------|---------------------|-----------------|----------------|-------------|--------------|
|        |                     |                 |                |             |              |
|        |                     |                 |                |             |              |
|        |                     |                 |                |             |              |
|        |                     |                 |                |             |              |
|        |                     |                 |                |             |              |
|        |                     |                 |                |             |              |



```

###Feature 3:Team Role Work

Query:

```sql

drop table team_role_work ;

create table team_role_work(
team_id number not null,
emp_id number not null,
emp_role varchar2(25) not null,
team_joined_on date not null,
team_exit_on date default null,
constraint team_id_fk foreign key(team_id) references team_details(team_id),
constraint emp_id_prk foreign key(emp_id) references employeer_details(emp_id)
);

insert into team_role_work(team_id,emp_id,emp_role,team_joined_on)
values(1,1,'testing',to_date('20-12-2020','DD-MM-YYYY'));                                                
insert into team_role_work(team_id,emp_id,emp_role,team_joined_on)
values(1,2,'developer',to_date('20-12-2019','DD-MM-YYYY'));
insert into team_role_work(team_id,emp_id,emp_role,team_joined_on)
values(1,3,'hr',to_date('20-12-2016','DD-MM-YYYY'));
insert into team_role_work(team_id,emp_id,emp_role,team_joined_on)
values(2,4,'testing',to_date('20-12-2020','DD-MM-YYYY'));
insert into team_role_work(team_id,emp_id,emp_role,team_joined_on)
values(2,5,'developer',to_date('23-02-2019','DD-MM-YYYY'));
insert into team_role_work(team_id,emp_id,emp_role,team_joined_on)
values(2,6,'hr',to_date('23-02-2020','DD-MM-YYYY'));
insert into team_role_work(team_id,emp_id,emp_role,team_joined_on)
values(3,7,'hr',to_date('07-05-2020','DD-MM-YYYY'));
insert into team_role_work(team_id,emp_id,emp_role,team_joined_on)
values(3,8,'developer',to_date('07-05-2019','DD-MM-YYYY'));
insert into team_role_work(team_id,emp_id,emp_role,team_joined_on)
values(3,9,'testing',to_date('10-08-2020','DD-MM-YYYY'));
insert into team_role_work(team_id,emp_id,emp_role,team_joined_on)
values(3,10,'trainee',to_date('10-08-2020','DD-MM-YYYY'));

update team_role_work
set team_exit_on=SYSDATE
where emp_id=2;
update team_role_work
set team_exit_on=SYSDATE
where emp_id=5;
update team_role_work
set team_exit_on=SYSDATE
where emp_id=9;

SELECT * FROM team_role_work;

table 3:team_role_work


| team_id | emp_id | emp_role  | team_joined_on | team_exit_on |
|---------|--------|-----------|----------------|--------------|
| 1       | 1      | testing   |                |              |
| 1       | 2      | developer |                |              |
| 1       | 3      | HR        |                |              |
| 2       | 4      | testing   |                |              |
| 2       | 5      | developer |                |              |
| 2       | 6      | HR        |                |              |
| 3       | 7      | HR        |                |              |
| 3       | 8      | developer |                |              |
| 3       | 9      | testing   |                |              |
| 3       | 10     | trainee   |                |              |


```

###Feature 4:Team Details


Query:

```sql

drop table team_details ;

create table team_details(
team_id number,
team_name varchar2(20) not null,
status varchar2(20) not null,
constraint team_id_pk primary key(team_id),
constraint status_cg check(status in('active','not_active'))
);

insert into team_details(team_id,team_name,status)
values(1,'ashoka','active');
insert into team_details(team_id,team_name,status)
values(2,'sivaji','active');
insert into team_details(team_id,team_name,status)
values(3,'tagore','not_active');

SELECT * FROM team_details;


table 4:team_details


| team_id | team_name | status     |
|---------|-----------|------------|
| 1       | ASHOKA    | active     |
| 2       | SIVAJI    | active     |
| 3       | TAGORE    | not_active |

```

###Feature 5:Project Done

Query:


```sql

drop table project_done;

create table project_done(
project_id number unique,
project_name varchar2(30) not null,
team_id number not null,
project_start_date date null,
project_end_date date null,
status varchar2(20) default 'on_going',
constraint team_id_fik foreign key(team_id) references team_details(team_id),
constraint status_st check(status in('on_going','completed','yet_to_start'))
);

insert into project_done(project_id,project_name,team_id)
values(1,'appconnect',1);
insert into project_done(project_id,project_name,team_id)
values(2,'appbuilder',2);
insert into project_done(project_id,project_name,team_id)
values(3,'appmigrate',3);

update project_done
set project_start_date=to_date('30-12-2020','DD-MM-YYYY')
where project_id=1;
update project_done
set project_start_date=to_date('30-12-2020','DD-MM-YYYY')
where project_id=2;
update project_done
set project_start_date=to_date('20-08-2020','DD-MM-YYYY')
where project_id=3;

update project_done
set project_end_date=project_start_date+150;
update project_done
set project_end_date=project_start_date+150;
update project_done
set project_end_date=project_start_date+150; 

update project_done
set status='completed'
where project_id=1;

SELECT * FROM project_done;


table 5:projects_done


| project_id | project_name | team_id | project_start_date | project_end_date | status |  |
|------------|--------------|---------|--------------------|------------------------|--------|--------|--------------------------|
| 1          | appconnect   | 1       |                    |                        |        |        |                          |
| 2          | appmigrate   | 2       |                    |                        |        |        |                          |
| 3          | appbuilder   | 3       |                    |                        |        |        |                          |



```







# Blood bank app
```sql

create sequence employee_id_seq start with 1 ;

```
```sql

create table bloodGroupDetails(
blood_group_id number,
blood_group varchar2(20),
constraint bg_id_pk primary key(blood_group_id)
);

```

```sql

create table blood_app(
user_id number,
user_name varchar2(30) not null,
email varchar2(30) UNIQUE,
blood_group_id number ,
active number default 1,
city varchar2(30),
constraint fkc_blood foreign key(blood_group_id) references bloodGroupDetails(blood_group_id)
);

```

```sql


insert into bloodGroupDetails(blood_group_id,blood_group)
values(1,'A+ve');

```
```sql
insert into bloodGroupDetails(blood_group_id,blood_group)
values(2,'A-ve');
```
```sql

insert into bloodGroupDetails(blood_group_id,blood_group)
values(3,'B+ve');
```
```sql

insert into bloodGroupDetails(blood_group_id,blood_group)
values(4,'B-ve');
```
```sql

insert into bloodGroupDetails(blood_group_id,blood_group)
values(5,'O+ve');
```
```sql

insert into bloodGroupDetails(blood_group_id,blood_group)
values(6,'O-ve');
```
```sql

insert into bloodGroupDetails(blood_group_id,blood_group)
values(7,'AB+ve');
```
```sql

insert into bloodGroupDetails(blood_group_id,blood_group)
values(8,'AB-ve');
```
```sql

insert into bloodGroupDetails(blood_group_id,blood_group)
values(9,'Golden Blood');
```
```sql


select * from bloodGroupDetails;

```
```sql

insert into blood_app(user_id,user_name,email,blood_group_id,city)
values(employee_id_seq.nextval,'ARJUN','arjunae798@gmail.com',1,'Madurai');
```
```sql

insert into blood_app(user_id,user_name,email,blood_group_id,city)
values(employee_id_seq.nextval,'KESAVAN','kesavanp555@gmail.com',3,'Coimbatore');
```
```sql

insert into blood_app(user_id,user_name,email,blood_group_id,city)
values(employee_id_seq.nextval,'KARTHICK','karrthicks10@gmail.com',5,'Chennai');
```
```sql


--inner join--
select user_id,user_name,email,blood_group,active,city from blood_app ba
inner join bloodGroupDetails bg on bg.blood_group_id=ba.blood_group_id;
```
```sql

--sub query--
select count(user_id) from blood_app where blood_group_id=(select blood_group_id from bloodGroupDetails where blood_group ='A+ve' ) and city='Madurai';       
```
```sql

select * from blood_app;
```

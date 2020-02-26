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

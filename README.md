###Course Registration

## FEATURES:
Student able to select their subjects          

### Feaure 1: Student Details

Query:


```sql
DROP TABLE personal_details;
CREATE TABLE personal_details(
names varchar2(25) NOT NULL,
registration_id varchar2(20) ,
department varchar2(20) NOT NULL ,
semester number NOT NULL,
mail_id varchar2(30) NOT NULL,
constraint reg_pk PRIMARY KEY(registration_id)
);
```

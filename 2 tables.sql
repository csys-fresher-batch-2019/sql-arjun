DROP TABLE Books;
CREATE TABLE Books(
book_id number NOT NULL PRIMARY KEY,
book_name varchar2(25) NOT NULL,
author_name varchar2(25) NOT NULL UNIQUE,
price number NOT NULL,
constraint price_cq check(price>=0),
publisher varchar2(25) NOT NULL,
editioner number UNIQUE,
categories varchar2(25) NOT NULL,
active char(1),
constraint active_cq check(active in('y','n'))
);
INSERT INTO Books(book_id,book_name,author_name,price,publisher,editioner,categories,active)
VALUES(1,'ORACLE','ARJUN',1800,'CHAINSYS',2,'SOFTWARE','y');
SELECT * FROM Books;

DROP TABLES ORDERS;
CREATE TABLE ORDERS(
orders_id number,
username varchar2(25) NOT NULL,
book_id number,
constraint oid_pk PRIMARY KEY (orders_id),
constraint bid_fk FOREIGN KEY (book_id) REFERENCES Books(book_id),
ordered_date timestamp,
delivery_date timestamp,
total_amount number NOT NULL,
constraint total_amount_cq check(total_amount>=0),
quantity number NOT NULL,
constraint quantity_cq check(quantity>1),
status varchar2(20) default 'PENDING',
constraint status_cq check(status in('ORDERED','DELIVERED','PENDING')),
comments varchar2(100),
constraint combined unique(username,book_id,ordered_date)
);
INSERT INTO ORDERS(orders_id,username,book_id,ordered_date,total_amount,quantity,comments)
VALUES(1,'KUMAR',1,to_date('26-12-2019','DD-MM-YYYY'),1950,2,'BEST');
UPDATE ORDERS set delivery_date=SYSDATE,status='DELIVERED' where book_id=1;
select * FROM ORDERS;
select*
from Books b
inner join ORDERS O
ON b.book_id= O.book_id

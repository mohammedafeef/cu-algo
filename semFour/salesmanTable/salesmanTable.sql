Create a table sales_man (salesman_no primary key, s_name not null, place, phone unique) Create table
sales_order (order_no primary key
order_date not null
salesman_no foreign key references salesman_no in sales_man
del_type values should be either P or F (check constraints)
order_status values should be 'Inprocess','Fullfilled','Backorder', 'Cancelled' (check
constraints))
a) Insert few records in both tables
b) Delete primary key from sales_man table
c) Delete Foreign key and Check constraints from sales_order table
d) Add primary key in sales_man using ALTER TABLE
e) Add foreign key and CHECK constraints in sales_order table using ALTER TABLE

Table structure:-
    Salesman
Attribute       Datatype        Constraint
salesman_no     varchar(5)
s_name          varchar(10)
place           varchar(15)
phone           varchar(15)


    Sales_order
Attribute       Datatype        Constraint
order_no        varchar(10)
order_date      date
salesman_no     varchar(10)
del_type        char(5)
order_status    char(10)


//Query:-
- create table salesman(salesman_no varchar(10) primary key,sname varchar(10) not null,place
varchar(10),phone varchar(10) unique);
- create table sales_order(order_no varchar(10) primary key,order_date date not null,salesman_no
varchar(10) constraint sno references salesman(salesman_no),del_type char(5) constraint check_del
check(del_type in('p','f')),order_status char(10) constraint check_order check(order_status
in('inprocess','fulfilled','backorder','cancelled')));

A). insert into salesman values('s1','JERIN','KOZHIKODE','456633');
insert into salesman values('s2','RAMSHAD','TMSY','67633');
insert into salesman values('s3','DIPINESH','KOYILANDI','2562333');
insert into sales_order values('p1','12-June-2018','s1','p','inprocess');
insert into sales_order values('p2','25-May-2018','s2','f','fulfilled');
insert into sales_order values('p3','29-April-2018','s3','p','cancelled');
select * from salesman;
select * from sales_order;
B). alter table salesman drop constraint salesman_pkey;
C). alter table sales_order drop constraint sno;
alter table sales_order drop constraint check_del;
alter table sales_order drop constraint check_order;
D). alter table salesman add primary key(salesman_no);
E) alter table sales_order add constraint sno foreign key(salesman_no) references
salesman(salesman_no);
alter table sales_order add constraint check_del check(del_type in('p','f'));
alter table sales_order add constraint check_order check(order_status
in('inprocess','fulfilled','backorder','cancelled'));


//Output:-
Table created
Table created
A). 5 rows inserted, 5 rows inserted
B). Table altered
Table altered
C). Table altered
D). Table altered.
E). Table altered.



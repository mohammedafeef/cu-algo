Create a table customer (cust_no varchar (5), cust_name varchar (15), age number, phone varchar (10))
a) insert 5 records and display it
b) add new field d_birth with date datatype
c) create another table cust_phone with fields cust_name and phone from customer table
d) remove the field age
e) change the size of the cust_name to 25
f) delete all the records from the table
g) rename the table customer to cust
h) drop the table

Table structure:-
    customer
Attribute   Datatype    Constraint
cust_no     varchar(5)
cust_name   varchar(15)
age         number
phone       varchar(10)


    Cust_phone
Attribute   Datatype    Constraint
cust_name   varchar(15)
phone       varchar(10)

//Query:-
create table customer(cust_no varchar(5),cust_name varchar(15),age int, phone varchar(10));
A) insert into customer values(1,’SHAMEEM’,19,234578);
insert into customer values(2,'ASWIN',19,7865490);
insert into customer values(3,'ATHUL',19,4567321);
insert into customer values(4,'ASWANI',19,5895624);
insert into customer values(5,'ADITHYA',19,895262);
select * from customer;
B). alter table customer add d_birth date;
C). create table cust_phone as select cust_name,phone from customer;
D). alter table customer drop age;
E). alter table customer alter column cust_name type varchar(25);
F). delete from customer;
G). alter table customer rename to cust;
H). drop table cust;

//output:-
Table created
a). 5 rows inserted
cust_no     cust_name   age     phone
1           SHAMEEM     19      234578
2           ASWIN       19      7865490
3           ATHUL       19      4567321
4           ASWANI      19      5895624
5           ADITHYA     19      895262

b). Table altered
c). Table altered
d). Table altered
e). Table altered
f). 5 rows deleted
g). Table altered
h). Table dropped.
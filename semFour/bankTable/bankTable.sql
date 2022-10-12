Create the following tables
Bank_customer (accno primary key, cust_name, place)
Deposit (accno foreign key, deposit_no, damount)
Loan (accno foreign key loan_no, Lamount)
Write the following queries
a) Display the details of the customers
b) Display the customers along with deposit amount who have only deposit with the
bank
c) Display the customers along with loan amount who have only loan with the bank
d) Display the customers they have both loan and deposit with the bank
e) Display the customer who have neither a loan nor a deposit with the bank

Table structure:-
    Bank_customer
Attribute   Datatype    Constraint
acc_no      number
cust_name   varchar(10)
place       varchar(15)

    Deposit
Attribute   Datatype    constraint
acc_no      number
deposit_no  number
damount     number

    Loan
Attribute   Datatype    constraint
loan_no     number
l_amount    number

//Query:-
create table bank_customer(acc_no int primary key, cust_name varchar(10), place varchar(15));
create table deposit (acc_no int references bank_customer(acc_no), deposit_no int,damount int);
create table loan(acc_no int references bank_customer(acc_no), loan_no int, l_amount int);

insert into bank_customer values(12344,'Abin','Kannur');
insert into bank_customer values(12345,'Arun','Kozhikode');
insert into bank_customer values(12346,'Athira','Koyilandi');
insert into bank_customer values(12347,'Samuel','Manjeri');
insert into bank_customer values(12348,'Aparna','Aluva');
insert into bank_customer values(12349,'Kiran','Pattambi');

insert into deposit values(12345,100,25000);
insert into deposit values(12346,101,30000);
insert into deposit values(12347,102,300000);

insert into loan values(12345,200,70000);
insert into loan values(12348,201,65000);
insert into loan values(12349,202,35000);

A). select b.acc_no,b.cust_name,b.place,d.deposit_no,d.damount,l.loan_no,l.l_amount from bank_customer b
full join deposit d on (b.acc_no=d.acc_no) full join loan l on(b.acc_no=l.acc_no);
B). select cust_name,damount from bank_customer,deposit where bank_customer.acc_no=deposit.acc_no and
not exists(select * from loan where loan.acc_no=bank_customer.acc_no);
C). select cust_name,l_amount from bank_customer,loan where bank_customer.acc_no=loan.acc_no and not
exists(select * from deposit where deposit.acc_no=bank_customer.acc_no);
D). select cust_name from bank_customer,deposit,loan where bank_customer.acc_no=loan.acc_no and
bank_customer.acc_no=deposit.acc_no;
E). select cust_name from bank_customer where acc_no not in(select acc_no from deposit union select acc_no
from loan);

//Output:-
Table created.
a).
acc_no  cust_name   place   deposit_no  damount     loan_no     l_amount
12344   Abin        Kannur        -       -           -           -
12345   Arun        Kozhikode   100     25000         200       70000
12346   Athira      Koyilandi   101     30000           -           -
12347   Samuel      Manjeri     102     300000          -           -
12348   Aparna      Aluva       -           -           201     65000
12349   Kiran       Pattambi     -          -           202     35000

b).
cust_name   damount
Athira      30000
Samuel      300000

c).
cust_name   l_amount
Aparna      65000
Kiran       35000

d).
cust_name
Arun
e).
cust_name
Abin



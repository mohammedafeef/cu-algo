Problem: customer table queries

Details: - create customer table
         - insert 5 records
         - display 5 records
         - remove the field age
         - change the size of the cust_name to 25
         - delete all the records from the table
         - rename the table customer to cust
         - drop the table

Solution:   - create table customer
            - insert into customer values
            - select * from customer
            - alter table customer add d_birth date
            - create table cust_phone as select cust_name,phone from customer
            - alter table customer drop age
            - alter table customer alter column cust_name type varchar(25)
            - delete from customer
            - alter table customer rename to cust
            - drop table cust

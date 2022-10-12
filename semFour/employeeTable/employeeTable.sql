Create a table employee with fields (EmpID, EName, Salary, Department, and Age). Insert some records. Write
SQL queries using aggregate functions and group by clause
A. Display the total number of employees.
B. Display the name and age of the oldest employee of each department.
C. Display the average age of employees of each department
D. Display departments and the average salaries
E. Display the lowest salary in employee table
F. Display the number of employees working in purchase department
G. Display the highest salary in sales department;
H. Display the difference between highest and lowest salary

    Table structure:-
Attribute   Datatype    Constraint
emp_id      number
emp_name    varchar(10)
salary      number
department  varchar(10)
age         number

//Query:-
create table employee(emp_id int, emp_name varchar(10), salary float, department varchar(10), age float);
insert into employee values(101,'JOSEPH',25000,'Sales',30);
insert into employee values(102,'STEPHEN',30000,'Sales',37);
insert into employee values(103,'DAVID',18000,'Sales',21);
insert into employee values(104,'JOHN',15000,'Marketing',25);
insert into employee values(105,'JAMES',21000,'Purchasing',32);
insert into employee values(106,'KARTHIK',25000,'Purchasing',35);

A). select count(*) from employee;
B). select emp_name,department,age from employee where age in(select max(age) from employee group by department);
C). select department,avg(age) from employee group by department;
D). select department,avg(salary) from employee group by department;
E). select min(salary) from employee;
F). select count(*) from employee where department='Purchasing';
G). select max(salary) from employee where department=’Sales’;
H). select max(salary)-min(salary) as salary_difference from employee;

    Output:-
Table created.
6 rows inserted.

a).
count(*)
6

b).
emp_name    department  age
STEPHEN     Sales       37
JOHN        Marketing   25
KARTHIK     Purchasing  35

c).
department  avg(age)
Purchasing  33.5
Sales       29.33
Marketing   25

d).
department  avg(salary)
Purchasing  23000
Sales       24333.33
Marketing   15000

e).
min(salary)
15000

f).
count(*)
2

g).
max(salary)
30000

h).
salary_difference
15000
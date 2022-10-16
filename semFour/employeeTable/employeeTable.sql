Create a table employee with fields (EmpID, EName, Salary, Department, and Age). Insert some records. Write SQL queries to perform the following.
a) Display the total number of employees.
b) Display the name and age of the oldest employee of each department.
c) Display the average age of employees of each department.
d) Display departments and the average salaries.
e) Display the lowest salary in employee table.
f) Display the number of employees working in purchase department.
g) Display the highest salary in sales department.
h) Display the difference between highest and lowest salary.

Table structure:-
    Employee
Attribute       Datatype        Constraints
empid           int             primary key
ename           varchar(25)     not null
salary          int
department      varchar(15)
age             int

//Query:-
Create table employee(empid int primary key,
    Ename varchar(20) not null,
    Salary int,
    dept varchar(20),
    age int);
Insert into employee values(101,’Raju’,12000,’sales’,28);
Insert into employee values(102,’Rida’,30000,’sales’,28);
Insert into employee values(103,’Sanni’,35000,’purchase’,28);
Insert into employee values(104,’Sanju’,40000,’hr’,28);
Insert into employee values(106,’ram’,30000,’sales’,29);
Insert into employee values(107,’Rada’,28000,’sales’,35);
Insert into employee values(108,’Sanny’,30000,’purchase’,42);
Insert into employee values(109,’Anju’,37000,’hr’,56);
a) Select count(*) from employee;
b) Select age, ename,dept from employee where age in( select max(age) from       employee group by dept);
c) Select dept,avg(age) from employee group by dept;
d) Select dept,avg(salary) from employee group by dept;
e) Select min(salary) from employee;
f) Select count(empid) from employee where dept=’purchase’;
g) Select max(salary) from employee where dept=’sales’;
h) Select max(salary)-min(salary) from employee;

//Output:-
Table created and 8 rows inserted.
a) count*
    8
b) ename        max(age)
    Rada            35
    Sanny           42
    Anju            56
c) department   avg(age)
    sales           30
    purchase        35
    hr              42
d) department   avg(salary)
    sales           25000
    purchase        32500
    hr              38500
e) min(salary)
    12000
f) count(empid)
        2
g) max(salary)
      30000
h) max(salary)-min(salary)
            28000

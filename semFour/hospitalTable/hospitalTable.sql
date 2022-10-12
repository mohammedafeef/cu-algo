Create a table Hospital with the fields
(doctorid,doctorname,department,qualification,experience).
Write the queries to perform the following.
a) Insert 5 records
b) Display the details of Doctors
c) Display the details of doctors who have the qualification ‘MD’
d) Display all doctors who have more than 5 years experience but do not have the qualification‘MD’
e) Display the doctors in ‘Skin’ department
f) update the experience of doctor with doctored=’D003’ to 5
g) Delete the doctor with DoctorID=’D005’

Table structure:-
    Hospital
Attribute       Datatype        Constraints
doctorid        varchar(5)
doctorname      char(10)
department      char(10)
qualification   varchar(10)
experience      varchar(5)


//Query:-
create table hospital(doctorid varchar(5), doctorname char(10), department char(10), qualification
varchar(10), experience varchar(5));
A). insert into hospital values('d001','Arun','Skin','MBBS','9');
insert into hospital values('d002','Athira','Ortho','MD','3');
insert into hospital values('d003','Kavya','Skin','MD','7');
insert into hospital values('d004','Kiran','ENT','BHMS','5');
insert into hospital values('d005','Jaya','Gynac','MBBS','8');
B). select * from hospital;
C). select * from hospital where qualification='MD';
D). select doctorname from hospital where experience>'5' and qualification!='MD';
E). select doctorname from hospital where department='Skin';
F). update hospital set experience='5' where doctorid='d003';
G). delete from hospital where doctorid='d005';

//Output:-
Table created.
a). 5 rows inserted.
b).
doctorid    doctorname  department  qualification   experience
d001        Arun        Skin        MBBS            9
d002        Athira      Ortho       MD              3
d003        Kavya       Skin        MD              7
d004        Kiran       ENT         BHMS            5
d005        Jaya        Gynac       MBBS            8

c).
doctorid    doctorname  department  qualification   experience
D002        Athira      Ortho       MD              3
D003        Kavya       Skin        MD              7

d).
doctorname
Arun
Jaya

e).
doctorname
Arun
Kavya

f). 1 row updated
g).1 row deleted

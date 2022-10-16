Create a table product with the fields (Product_code primary key, Product_Name, Category, Quantity, Price). 
Insert some records Write the queries to perform the following.
	a) Display the records in the descending order of Product_Name.
    b) Display Product_Code, Product_Name with price between 20 and 50.
	c) Display the  details of products  which belongs to  the categories of  ‘bath soap’, ‘paste’,  or ‘washing powder’.
	d) Display the products whose Quantity less than 100 or greater than 500.
	e) Display the products whose  names starts with 's'.
	f) Display the products which not belongs to  the category 'paste'.
	h) Display the products  whose second letter is 'u' and belongs to the Category 'washing powder'.

Table structure:-
                Product
Attribute        Datatype        Constraints
Product_code      int            primary key
Product_Name    varchar(20)        not null
Category        varchar(20)	       not null
Quantity 	      int
Price             int

//Query:-
Create table product(procode int primary key,
Pronamevarchar2(20) not null,
Catogery varchar2(20) not null,
Quantity  int ,
Price int);
Insert into product values(101, 'surf-excel', 'washing powder', 5,35);
Insert into product values(102, 'dove', 'bathsoap', 95,25);
Insert into product values(103, 'colgate', 'paste', 50,20);
Insert into product values(104, 'laddu', 'sweets',150,60);
Insert into product values(105, 'tide', 'washing powder', 95,55);

a) Select * from product order by proname desc;
b) Select procode,proname from product where price between 20 and 50;
c) Select proname,price from product where catogery in(‘bathsoap’,’paste’,'washing powder');
d) select * from product where quantity<100 or quantity>500;
e) select * from product where catogery like 's%';
f) select * from product where not in catogery='paste';
g) select * from product where proname like '_u%' and catogery='washing powder';

//Output:-
Table created and 5 rows inserted. 
a) procode     proname         category        quantity    price
    105          Tide        washing powder        95        55
    101        surf-excel    washing powder        95        35
    104         laddu            sweets           150        60
    102         dove            bathsoap           95        25
    103        colgate            paste            50        20

b) procode      proname
    102          dove
    101        surf-excel

c) proname          price
  surf-excel          35
  tide                55
  dove                25
  colgate             20

d) procode      proname         category        quantity        price
    101        surf-excel     washing powder       95             35
    102          dove           bathsoap           95             25
    103         colgate         paste              50             20
    105          tide         washing powder       95             55

e) procode  proname         category         quantity    price
    101    surf-excel     washing powder        95         35

f) procode  proname         category        quantity    price
    101    surf-excel   washing powder          95       35
    104     laddu            sweets            150       60
    102     dove            bathsoap            95       25
    105     tide        washing powder          95       55

g) procode  proname     category        quantity    price
    101    surf-excel  washing powder      95         35
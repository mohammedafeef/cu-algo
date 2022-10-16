-- source code
declare
	first number:=0;
	second number:=1;
	third number;
	n number:=&n;
	i number;

begin
	dbms_output.put_line('Fibonacci series is:');
	dbms_output.put_line(first);
	dbms_output.put_line(second);	

	for i in 2..n
	loop
		third:=first+second;
		first:=second;
		second:=third;

		dbms_output.put_line(third);
	end loop;
end;
/
-- output
Enter value for n: 5
old 5:n number: &n;
new 5:n number: 5;
Fibonacci series is:0
                    1
                    1
                    2
                    3

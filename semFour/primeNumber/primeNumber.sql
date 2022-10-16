-- source code:-
declare
	n number;
	i number;
	flag number;

begin
	i:=2;
	flag:=1;
	n:=&n;

	for i in 2..n/2
	loop
		if mod(n,i)=0
		then
			flag:=0;
			exit;
		end if;
	end loop;

	if flag=1
	then
		dbms_output.put_line('prime');
	else
		dbms_output.put_line('not prime');
	end if;
end;
/

-- Output:-
-- prime 
Enter value for n: 13
old 13:n number: &n;
new 13:n number: 13;
prime

-- not prime
Enter value for n: 8
old 8:n number: &n;
new 8:n number: 8;
not prime



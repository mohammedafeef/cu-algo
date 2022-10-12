## Sum of two time intervals
---
### Algorithm

*Step 01* : **Start**

*Step 02* : **Create class Time with members hours, minutes & seconds**

*Step 03* : **Read hours, minutes & seconds of first time to object t1**

*Step 04* : **Read hours, minutes & seconds of second time to object t2**

*Step 05* : **Declare object 't' to store the sum of times**

*Step 06* : **set sec_sum as sum of seconds of t1 & t2**

&emsp;&emsp;&emsp;&emsp;**set min_sum as sum of minutes of t1 & t2**

&emsp;&emsp;&emsp;&emsp;**set hour_sum as sum of hours of t1 & t2**

*Step 07* : **if sec_sum<60, t.seconds = sec_sum**

*Step 08* : **else,**

&emsp;&emsp;&emsp;&emsp;&emsp;**increment min_sum by 1**

&emsp;&emsp;&emsp;&emsp;&emsp;**t.seconds = absolute value of 60-sec_sum**

*Step 09* : **if min_sum<60, t.minutes = min_sum**

*Step 10* : **else,**

&emsp;&emsp;&emsp;&emsp;&emsp;**increment hour_sum by 1**

&emsp;&emsp;&emsp;&emsp;&emsp;**t.minutes = absolute value of 60-min_sum**

*Step 11* : **if hour_sum<24, t.hours = hour_sum**

*Step 12* : **else, t.hours = absolute value of 24-hour_sum**

*Step 13* : **Print hours, minutes & seconds of object 't'**

*Step 14* : **Stop**

	
	





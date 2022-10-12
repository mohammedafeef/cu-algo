## problem: Armstrong numbers within a range

### Algorithm

*Step 01* : **Start**

*Step 02* : **Read lower range and upper range as low & high**

*Step 03* : **Set i = low + 1**

*Step 04* : **While i &lt; high, repeat steps 5 to 10**

*Step 05* : **set num = 0**

*Step 06* : **set integer dig = log<sub>10</sub>(i) + 1**

*Step 07* : **temp = i**

*Step 08* : **While temp &#8800; 0, repeat step 8**


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**rem = temp % 10**


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**num = num + (rem)<sup>dig</sup>**


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Update temp = temp / 10**

*Step 09* : **if i = num, print i**

*Step 10* : **Increment i by 1**

*Step 11* : **Stop**
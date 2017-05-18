Script started on Thu 03 Mar 2016 04:35:06 PM EST
zdw3@chomsky:~/workspace/cs214/labs/04$ cat log_table.adb
-- log_table.adb computes a table of logarithms.
--
-- Input: start, stop, increment, three reals.
-- Precondition: increment is positive.
-- Output: A table of logarithms beginning with log(start),
--         ending with log(stop), with intervals of increment.
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Zach Wibbenmeyer
-- Date: March 3, 2016
--------------------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;

procedure log_table is

   Start, Stop, Increment : Float;
   Counter : Float;
   
begin                                           -- Prompt for input
   Put_Line("To print a table of logarithms,");
   Put(" enter the start, stop, and increment values: ");
   Get(Start); Get(Stop); Get(Increment);

   Counter := Start;
   While_Loop :
       -- While loop to generate log table
      while Counter < Stop loop
	 -- Compute the log table
	 Put_Line("The logarithm of ");
	 Put(Counter);
	 Put(" is ");
 	 -- Calculate the log tables
	 Put(log(Counter, 10.0));
	 -- Increment Counter
	 Counter := Counter + Increment;
 	 -- Exit the while loop when...
	 exit While_Loop when Counter = Stop;
      end loop While_Loop;

end log_table;

zdw3@chomsky:~/workspace/cs214/labs/04$ gnatmake Lo  log_table.adb
gcc-4.6 -c log_table.adb
gnatbind -x log_table.ali
gnatlink log_table.ali
zdw3@chomsky:~/workspace/cs214/labs/04$ gnatmake log_table.adb[5Pcat log_table.adb./callTimer -p -t -r2t -p -r3p -t -r2[4Pcat log_table.adb[5@gnatmake log_table.adb[K./o log_table
To print a table of logarithms,
 enter the start, stop, and increment values: 1
10
.5
The logarithm of 
 1.00000E+00 is  0.00000E+00The logarithm of 
 1.50000E+00 is  1.76091E-01The logarithm of 
 2.00000E+00 is  3.01030E-01The logarithm of 
 2.50000E+00 is  3.97940E-01The logarithm of 
 3.00000E+00 is  4.77121E-01The logarithm of 
 3.50000E+00 is  5.44068E-01The logarithm of 
 4.00000E+00 is  6.02060E-01The logarithm of 
 4.50000E+00 is  6.53212E-01The logarithm of 
 5.00000E+00 is  6.98970E-01The logarithm of 
 5.50000E+00 is  7.40363E-01The logarithm of 
 6.00000E+00 is  7.78151E-01The logarithm of 
 6.50000E+00 is  8.12913E-01The logarithm of 
 7.00000E+00 is  8.45098E-01The logarithm of 
 7.50000E+00 is  8.75061E-01The logarithm of 
 8.00000E+00 is  9.03090E-01The logarithm of 
 8.50000E+00 is  9.29419E-01The logarithm of 
 9.00000E+00 is  9.54243E-01The logarithm of 
 9.50000E+00 is  9.77724E-01
zdw3@chomsky:~/workspace/cs214/labs/04$ exit

Script done on Thu 03 Mar 2016 04:35:38 PM EST

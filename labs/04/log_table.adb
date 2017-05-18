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


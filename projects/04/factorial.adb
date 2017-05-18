-- Factorial.adb computes the factorial of a given number
--
-- Input: n, a double
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Zach Wibbenmeyer
-- Date: March 7, 2016
--------------------------------------------------------------

-- Include the necessary libraries
with Ada.Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO;


procedure factorial is

    -- Declare global variables
    num : Integer;
    answer : Integer;

    -- computer_factorial() method - computes the factorial of an integer
    -- @param: n (type = integer)
    -- @return: answer (type = integer)
    -- Precondition: n must be an integer
    function compute_factorial(n: in integer) return integer is
    begin
	answer := 1;
	-- Main for loop to calculate factorials
	For_Loop :
	    for i in 2 .. n 
            loop
	        answer := answer * i;
	    end loop For_Loop;
	return answer;
    end compute_factorial;


-- Main program
begin
    -- Prompt the user for an integer
    Put_Line("To computer n!, ");
    Put("enter n: ");
    -- Receive integer
    Get(num);
    -- Compute factorial using method
    Put(compute_factorial(num));
    New_Line;
end factorial;

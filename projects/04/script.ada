Script started on Sun 06 Mar 2016 09:17:28 PM EST
zdw3@chomsky:~/workspace/cs214/projects/04$ cat factorial.adb
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
zdw3@chomsky:~/workspace/cs214/projects/04$ gnatmake factorial.adb
gcc-4.6 -c factorial.adb
gnatbind -x factorial.ali
gnatlink factorial.ali
zdw3@chomsky:~/workspace/cs214/projects/04$ ./factorial
To computer n!, 
enter n: 3
          6
zdw3@chomsky:~/workspace/cs214/projects/04$ ./factorial
To computer n!, 
enter n: 4
         24
zdw3@chomsky:~/workspace/cs214/projects/04$ ./factorial
To computer n!, 
enter n: 5
        120
zdw3@chomsky:~/workspace/cs214/projects/04$ ./factorial
To computer n!, 
enter n: 6
        720
zdw3@chomsky:~/workspace/cs214/projects/04$ ./factorial
To computer n!, 
enter n: 7
       5040
zdw3@chomsky:~/workspace/cs214/projects/04$ exit

Script done on Sun 06 Mar 2016 09:17:58 PM EST

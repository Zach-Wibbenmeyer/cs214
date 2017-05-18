-- grades.adb is a driver function for letterGrade
-- By: Zach Wibbenmeyer
-- Date: February 26, 2016

-- Include the necessary libraries
with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

-- Create a procedure
procedure grades is

     -- Declare a global variable
     avg : integer;

     -- letterGrade() method - returns a letter grade for the given average
     -- @param: average (type = integer)
     -- @return: letter grades (type = character)
     -- Precondition: average must be an integer 
     function letterGrade(average: in integer) return character is
     begin
	case average / 10 is
	 when 9..10 =>
	    return 'A';
	 when 8 =>
	    return 'B';
	 when 7 =>
	    return 'C';
	 when 6 =>
	    return 'D';
	 when others =>
	    return 'F';
	end case;
     end letterGrade;

-- Main program
begin
   -- Prompt for the average
   Put("Enter the average grade: ");
   -- Get the average
   Get(avg);
   -- Calculate the letter grade to be received
   Put( letterGrade(avg) );
   -- Input a new line
   New_Line;
end grades;

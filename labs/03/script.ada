Script started on Fri 19 Feb 2016 10:06:19 AM EST
zdw3@babbage:~/workspace/cs214/labs/03$ cat da  year_codes.adb
-- year_codes.adb converts academic year codes to corresponding years.
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- By: Zach Wibbenmeyer
-- Date: February 24, 2016
-- Input: year, a string
-- Precondition: year is one of "freshman", "sophomore", "junior", "senior"
-- Output: The year code (1, 2, 3 or 4) corresponding to year.
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure year_codes is

   year : String(1..9) := "         ";
   charsRead : Natural;

   -- yearCode() converts an academic year into its integer code.
   -- @param: year, a string.
   -- PRE: year is one of {freshman, sophomore, junior, or senior}.
   -- @return: the integer code corresponding to year.
   function yearCode(year: in string) return integer is
   begin
      if year = "freshman " then
         return 1;
      elsif (year = "sophomore") then
	 return 2;
      elsif (year = "junior   ") then
	 return 3;
      elsif (year = "senior   ") then
	 return 4;
      else
         return 0;
      end if;
   end yearCode;
      
-- Main program
begin                                          
   Put("Enter your academic year: ");           -- Prompt for input
   Get_Line(year, charsRead);                   -- Input
   Put( yearCode(year) );                       -- Convert and output
   New_Line;
end year_codes;

zdw3@babbage:~/workspace/cs214/labs/03$ gnatmake year_codes.adb
gnatmake: "year_codes" up to date.
zdw3@babbage:~/workspace/cs214/labs/03$ ./year_codes 
Enter your academic year: freshman
          1
zdw3@babbage:~/workspace/cs214/labs/03$ ./year_codes 
Enter your academic year: sophomore
          2
zdw3@babbage:~/workspace/cs214/labs/03$ ./year_codes 
Enter your academic year: junior
          3
zdw3@babbage:~/workspace/cs214/labs/03$ ./year_codes 
Enter your academic year: senior
          4
zdw3@babbage:~/workspace/cs214/labs/03$ ./year_codes 
Enter your academic year: nah
          0
zdw3@babbage:~/workspace/cs214/labs/03$ exit

Script done on Fri 19 Feb 2016 10:07:14 AM EST

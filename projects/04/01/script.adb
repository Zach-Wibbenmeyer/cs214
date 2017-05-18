Script started on Thu 11 Feb 2016 04:21:04 PM EST
zdw3@hollerith:~/workspace/cs214/projects/01$ cat   ca  ca  cat re  rrec    rectangle_area.adb
-- rectangle_area.adb computes the area of a rectangle.
--
-- Input: The lengths of the rectangle.
-- Precondition: The lengths are positive numbers.
-- Output: The area of the rectangle.
--
-- Begun by: Dr. Nelesen, CS 214 at Calvin College.
-- Completed by: Zach Wibbenmeyer
-- Date: February 12, 2016
----------------------------------------------------

-- Import the necessary libraries
with Ada.Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO;

procedure rectangle_area is

	-- Determine variables as floats
	width, length, area : float;

	-- function rectangleArea computes the rectangle's area
	-- @param: l, w, floats
	-- Precondition: l, w must not be negative
	-- Return: the area of the rectangle
	---------------------------------------------------------
	function rectangleArea(l, w : in float) return float is
	begin 
	   return l * w;
	end rectangleArea;

------------ Main Program -------------------------

begin 
   --- Prompt for the length
   Put_Line("To compute the area of the rectangle,");
   Put("enter the length: ");
   Get(length);

   --- Prompt for the width
   Put_Line("To contine to compute the area,");
   Put("enter the width: ");
   Get(width);

   -- Calculate the area
   area := rectangleArea(length, width);
   
   -- Print the area
   Put("The area is: ");
   Put(area);
   New_Line;
end rectangle_area;
zdw3@hollerith:~/workspace/cs214/projects/01$ gnatmake rectangle_area
gnatmake: "rectangle_area" up to date.
zdw3@hollerith:~/workspace/cs214/projects/01$ . gnatmake rectangle_area[1Pcat rectangle_area.adb[3Pjava rectangle_areacat rectangle_area.adbgnatmake rectangle_area[K./re    ./rectangle_area 
To compute the area of the rectangle,
enter the length: 3
To contine to compute the area,
enter the width: 2
The area is:  6.00000E+00
zdw3@hollerith:~/workspace/cs214/projects/01$ ./rectangle_area 
To compute the area of the rectangle,
enter the length: 5
To contine to compute the area,
enter the width: 6
The area is:  3.00000E+01
zdw3@hollerith:~/workspace/cs214/projects/01$ ./rectangle_area 
To compute the area of the rectangle,
enter the length: 3.5
To contine to compute the area,
enter the width: 4.5
The area is:  1.57500E+01
zdw3@hollerith:~/workspace/cs214/projects/01$ exit

Script done on Thu 11 Feb 2016 04:22:16 PM EST

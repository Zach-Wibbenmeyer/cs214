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

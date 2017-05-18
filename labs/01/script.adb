Script started on Wed 03 Feb 2016 06:36:04 PM EST
zdw3@hopper:~/workspace/cs214/labs/01$ cat   cat   cat circle_area.adb
-- circle_area.adb computes the area of a circle.
--
-- Input: The radius of the circle.
-- Precondition: The radius is a positive number.
-- Output: The area of the circle.
--
-- Begun by: Dr. Nelesen, CS 214 at Calvin College.
-- Completed by: Zach Wibbenmeyer
-- Date: Feb 10, 2016
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure circle_area is

   radius, area : float; 

   -- function circleArea computes a circle's area, given its radius
   -- Parameter: r, a float
   -- Precondition: r >= 0.0
   -- Return: the area of the circle whose radius is r
   ----------------------------------------------------
   -- Create a function for calculating the area of a circle
   function circleArea(r: in float) return float is 
      PI : constant := 3.1415927;
   begin
      return PI * r ** 2;
   end circleArea;

-- Main program
begin
   -- Prompt for the area of a cirle                           
   Put_Line("To compute the area of a circle,");
   Put("enter its radius: ");
   -- Get the radius the user enters
   Get(radius);

   -- Calculate the area by calling the function
   area := circleArea(radius);
   
   -- Print out the area
   Put("The area is ");
   Put(area);
   New_Line;
-- End the program
end circle_area;
zdw3@hopper:~/workspace/cs214/labs/01$ gnatmake ci  circle_area
gcc-4.6 -c circle_area.adb
gnatbind -x circle_area.ali
gnatlink circle_area.ali
zdw3@hopper:~/workspace/cs214/labs/01$ gnatmake circle_area
gnatmake: "circle_area" up to date.
zdw3@hopper:~/workspace/cs214/labs/01$ ./circle_area 
To compute the area of a circle,
enter its radius: 1
The area is  3.14159E+00
zdw3@hopper:~/workspace/cs214/labs/01$ ./circle_area 
To compute the area of a circle,
enter its radius: 2
The area is  1.25664E+01
zdw3@hopper:~/workspace/cs214/labs/01$ ./circle_area 
To compute the area of a circle,
enter its radius: 2.5
The area is  1.96350E+01
zdw3@hopper:~/workspace/cs214/labs/01$ ./circle_area 
To compute the area of a circle,
enter its radius: 4.99999
The area is  7.85395E+01
zdw3@hopper:~/workspace/cs214/labs/01$ exit

Script done on Wed 03 Feb 2016 06:37:23 PM EST

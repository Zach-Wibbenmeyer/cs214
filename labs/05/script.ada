Script started on Tue 08 Mar 2016 09:59:17 PM EST
zdw3@hoare:~/workspace/cs214/labs/05$ cat split.adb
-- split.adb splits an input string about a specified position.
--
-- Input: Astring, a string,
--        Pos, an integer.
-- Precondition: pos is in Astring'Range.
-- Output: The substrings Astring(Astring'First..Pos-1) and
--                        Astring(Pos..Astring'Last).
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Zach Wibbenmeyer
-- Date: March 9, 2016
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;

procedure split is

   EMPTY_STRING : String := "                                        ";

   Astring, Part1, Part2 : String  := EMPTY_STRING;
   Pos, Chars_read       : Natural;

   ------------------------------------------------
   --  split() splits a string in two.           
   -- Receive: The_String, the string to be split,
   --          Position, the split index.        
   -- PRE: 0 < Position <= The_String.length(). 
   --     (Ada arrays are 1-relative by default)
   -- Passback: First_Part - the first substring,
   --           Last_Part - the second substring.
   ------------------------------------------------
   procedure split (The_String : in String; Position : in Integer; First_Part : out String; Last_Part : out String) is
   begin
      -- Receive the first part of the string
      Move(The_String(1..(Position-1)), First_Part);
      -- Receive the second part of the string
      Move(The_String(Position..The_String'Length), Last_Part);
   end split;


begin                                           -- Prompt for input
   Put("To split a string, enter the string: ");
   Get_Line(Astring, Chars_Read);
   Put("Enter the split position: ");
   Get(Pos);

   split(Astring, Pos, Part1, Part2);

   Put("The first part is ");
   Put_Line(Part1);
   Put(" and the second part is ");
   Put_Line(Part2);

end split;

zdw3@hoare:~/workspace/cs214/labs/05$ gnatmake split
gnatmake: "split" up to date.
zdw3@hoare:~/workspace/cs214/labs/05$ ./split
To split a string, enter the string: hello
Enter the split position: 1
The first part is                                         
 and the second part is hello                                   
zdw3@hoare:~/workspace/cs214/labs/05$ ./split
To split a string, enter the string: hello
Enter the split position: 4
The first part is hel                                     
 and the second part is lo                                      
zdw3@hoare:~/workspace/cs214/labs/05$ ./split
To split a string, enter the string: hello
Enter the split position: 6
The first part is hello                                   
 and the second part is                                         
zdw3@hoare:~/workspace/cs214/labs/05$ exit

Script done on Tue 08 Mar 2016 09:59:54 PM EST

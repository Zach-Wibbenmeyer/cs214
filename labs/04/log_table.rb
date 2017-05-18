#! /usr/bin/ruby
# log_table.rb displays a table of logarithms
#
# Begun by: Dr. Nelesen, for CS 214 at Calvin College.
# Completed by: Zach Wibbenmeyer
# Date: March 3, 2016
#
# Input:  The start, stop and increment values
# Precondition: The start value is less than the stop value, 
#     and the increment is greater than 0
# Output: A table of logarithms from start to stop, with increment
#     as the step value


#Main Program
if __FILE__ == $0
   #Prompt for and receive values
   print "Enter the start value: "
   start = gets.chomp.to_f
   print "Enter the stop value: "
   stop = gets.chomp.to_f
   print "Enter the increment value: "
   increment = gets.chomp.to_f
   
   count = start
   # While loop
   while count < stop do
      print "The logarithm of "
      puts count
      print " is "
      # Calculate the logarithm
      puts Math.log10(count)
      count = count + increment
   end   

end


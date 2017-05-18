Script started on Thu 03 Mar 2016 07:00:35 PM EST
zdw3@sutherland:~/workspace/cs214/labs/04$ cat log_tble   able.rb
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

zdw3@sutherland:~/workspace/cs214/labs/04$ ruby log_table.rb
Enter the start value: 1
Enter the stop value: 10
Enter the increment value: .5
The logarithm of 1.0
 is 0.0
The logarithm of 1.5
 is 0.17609125905568124
The logarithm of 2.0
 is 0.3010299956639812
The logarithm of 2.5
 is 0.3979400086720376
The logarithm of 3.0
 is 0.47712125471966244
The logarithm of 3.5
 is 0.5440680443502757
The logarithm of 4.0
 is 0.6020599913279624
The logarithm of 4.5
 is 0.6532125137753437
The logarithm of 5.0
 is 0.6989700043360189
The logarithm of 5.5
 is 0.7403626894942439
The logarithm of 6.0
 is 0.7781512503836436
The logarithm of 6.5
 is 0.8129133566428556
The logarithm of 7.0
 is 0.8450980400142568
The logarithm of 7.5
 is 0.8750612633917001
The logarithm of 8.0
 is 0.9030899869919435
The logarithm of 8.5
 is 0.9294189257142927
The logarithm of 9.0
 is 0.9542425094393249
The logarithm of 9.5
 is 0.9777236052888477
zdw3@sutherland:~/workspace/cs214/labs/04$ exit

Script done on Thu 03 Mar 2016 07:01:06 PM EST

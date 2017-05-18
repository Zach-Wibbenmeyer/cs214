Script started on Wed 03 Feb 2016 06:40:48 PM EST
zdw3@hopper:~/workspace/cs214/labs/01$ cat   cat circle_area.rb
#! /usr/bin/ruby
# circle_area.rb computes the area of a circle given its radius
# 
# Input: the radius of a circle
# Precondition: the radius is not negative
# Output: the area of the circle.
#
# Begun by: Dr. Nelesen, for CS 214 at Calvin College.
# Completed by: Zach Wibbenmeyer
# Date: Feb 10, 2016
###############################################################

# function circleArea returns a circle's area, given its radius
# Parameters: r, a number
# Precondition: r > 0.
# Returns: the area of a circle whose radius is r.

#Create a constant for PI
PI = 3.1415927

# Create a function that calculates the area of a circle
def circleArea(r)
    PI * r ** 2 
end

# Main program
if __FILE__ == $0
   
   #Call for the radius
   print "Enter the radius: "

   # Create a variable for the radius for the user to enter
   radius = gets.chomp.to_f
   print "Area is: "

   # Calculate the area by calling the previous function
   puts circleArea(radius)
end
zdw3@hopper:~/workspace/cs214/labs/01$ ruby circle_area.rb
Enter the radius: 1
Area is: 3.1415927
zdw3@hopper:~/workspace/cs214/labs/01$ ruby circle_area.rb
Enter the radius: 2
Area is: 12.5663708
zdw3@hopper:~/workspace/cs214/labs/01$ ruby circle_area.rb
Enter the radius: 2.5
Area is: 19.634954375
zdw3@hopper:~/workspace/cs214/labs/01$ ruby circle_area.rb
Enter the radius: 4.99999
Area is: 78.53950334104417
zdw3@hopper:~/workspace/cs214/labs/01$ exit

Script done on Wed 03 Feb 2016 06:41:24 PM EST

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

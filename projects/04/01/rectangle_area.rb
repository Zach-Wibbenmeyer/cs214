#! /usr/bin/ruby
# rectangle_area.rb computes the area of a rectangle
# 
# Input: the length and width of the rectangle
# Precondition: the length and width are positive
# Output: the area of the rectangle.
#
# Begun by: Dr. Nelesen, for CS 214 at Calvin College.
# Completed by: Zach Wibbenmeyer
# Date: February 12, 2016
###############################################################

# function rectangleArea returns a rectangle's area, given its length and width
# @param: l, w, numbers
# Precondition: l and w are positive
# Return: the area of the rectangle

def rectangleArea(l, w)
	#Calculate the area
	l * w
end

# Main program

if __FILE__ == $0

	#Prompt the user for the length
	print "To calculate the area of a rectangle, enter the length: "
	length = gets.chomp.to_f
	
	#Prompt the user for the width
	print "Now, enter the width: "
	width = gets.chomp.to_f

	#Print the area
	print "Area is: "
	#Call the rectangleArea function
	puts rectangleArea(length, width)
end

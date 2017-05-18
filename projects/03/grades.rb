# grades.rb is a driver function for letterGrade
# By: Zach Wibbenmeyer
# Date: February 26, 2016
#############################################################


# letterGrade()  method - returns a letter grade for the average given
# @param: average (type = integer
# @return: a grade (type = character)
# Precondition: the average entered must be an integer
def letterGrade(average)
	case average / 10
	when 9, 10
		'A'
	when 8
		'B'
	when 7
		'C'
	when 6
		'D'
	else
		'F'
	end
end

# Main program
if __FILE__ == $0
	
	# Prompt for the average
	print "Enter the average grade: "
	# Get the average
	avg = gets.chomp.to_i
	# Call the method to return the grade
	puts letterGrade(avg)
end

#! /usr/bin/ruby
# factorial.rb computes the factorial of a given number
#
# Begun by: Dr. Nelesen, for CS 214 at Calvin College.
# Completed by: Zach Wibbenmeyer
# Date: March 7, 2016
############################################################

# computeFactorial() method - computes the factorial of an integer
# @param: n
# @return: a float
# Precondition: n must be an integer
def computeFactorial(n)
	# Create a local variable
	answer = 1.0

	# Main for loop for calculating factorial
	for i in 2 .. n
		answer *= i

	end
	return answer
end

# Main program
if __FILE__ == $0

	# Prompt user for a number
	print "To compute n!, enter n: "
	# Receive number
	num = gets.chomp.to_f
	# Compute factorial using method
	puts computeFactorial(num)
end
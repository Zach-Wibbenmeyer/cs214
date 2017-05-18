Script started on Sun 06 Mar 2016 09:38:12 PM EST
zdw3@chomsky:~/workspace/cs214/projects/04$ cat factorial.rb
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
endzdw3@chomsky:~/workspace/cs214/projects/04$ ruby factorial.rb
To compute n!, enter n: 3
6.0
zdw3@chomsky:~/workspace/cs214/projects/04$ ruby factorial.rb
To compute n!, enter n: 4
24.0
zdw3@chomsky:~/workspace/cs214/projects/04$ ruby factorial.rb
To compute n!, enter n: 5
120.0
zdw3@chomsky:~/workspace/cs214/projects/04$ ruby factorial.rb
To compute n!, enter n: 6
720.0
zdw3@chomsky:~/workspace/cs214/projects/04$ ruby factorial.rb
To compute n!, enter n: 7
5040.0
zdw3@chomsky:~/workspace/cs214/projects/04$ exit

Script done on Sun 06 Mar 2016 09:38:50 PM EST

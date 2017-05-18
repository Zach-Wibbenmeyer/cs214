Script started on Mon 18 Apr 2016 09:18:05 PM EDT
zdw3@cray:~/workspace/cs214/labs/06$ cat average.rb
# average.rb averages the values of an array of doubles.
# Precondition: theArray is an array of numbers
# Output: the average of the values in theArray
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by:: Zach Wibbenmeyer
########################################################

###############################################
# sum() sums the values in an array
# Receive: anArray, an array of numbers
# Return: the sum of the values in anArray.
################################################

def sum(theArray)
	total = 0
	theArray.each do |i|
		total = total + i
	end
	return total
end

# average() - computes the average of the values in an array
# Receive: anArray, an array of doubles
# Return: the average of the values in anArray
def average(anArray)
	if anArray.size > 0 then
		return sum(anArray) / anArray.size
	else
		return 0.0
	end
end

def main
	array0 = []
	array1 = [6.0, 7.0, 8.0, 9.0]

    puts "sum 0 is: #{ sum(array0) }\n"
    puts "sum 1 is: #{ sum(array1) }\n"

    puts "average 0 is: #{ average(array0) }\n"
    puts "average 1 is: #{ average(array1) }\n"
end

main
zdw3@cray:~/workspace/cs214/labs/06$ ruby average.rb
sum 0 is: 0
sum 1 is: 30.0
average 0 is: 0.0
average 1 is: 7.5
zdw3@cray:~/workspace/cs214/labs/06$ exit

Script done on Mon 18 Apr 2016 09:18:16 PM EDT

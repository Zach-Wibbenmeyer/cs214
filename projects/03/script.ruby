Script started on Thu 25 Feb 2016 06:59:37 PM EST
zdw3@goldberg:~/workspace/cs214/projects/03$ cat ga  grades.rb
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
zdw3@goldberg:~/workspace/cs214/projects/03$ cat grades.rb[3Pssh taylorruby grades.rb
Enter the average grade: 95
A
zdw3@goldberg:~/workspace/cs214/projects/03$ ruby grades.rb
Enter the average grade: 85
B
zdw3@goldberg:~/workspace/cs214/projects/03$ ruby grades.rb
Enter the average grade: 75
C
zdw3@goldberg:~/workspace/cs214/projects/03$ ruby grades.rb
Enter the average grade: 65
D
zdw3@goldberg:~/workspace/cs214/projects/03$ ruby grades.rb
Enter the average grade: 55
F
zdw3@goldberg:~/workspace/cs214/projects/03$ ruby grades.rb
Enter the average grade: 22
F
zdw3@goldberg:~/workspace/cs214/projects/03$ exit

Script done on Thu 25 Feb 2016 07:00:28 PM EST

Script started on Fri 19 Feb 2016 01:25:49 PM EST
zdw3@cs-ssh:~/workspace/cs214/labs/03$ cat year_codes.rb
#! /usr/bin/ruby
# year_codes.rb translates an academic year into a numeric code
# Begun by: Dr. Nelesen, for CS 214 at Calvin College 
# By: Zach Wibbenmeyer
# Date: February 24, 2016
################################################################

# Input:  The name of an academic year
# Precondition: The academic year is a string with a value of freshman, 
#   sophomore, junior or senior
# Output: The corresponding integer code for the given academic year

def yearCode(year)
	if year =~ /freshman/
		return 1
	elsif year =~ /sophomore/
		return 2
	elsif year =~ /junior/
		return 3
	elsif year =~ /senior/
		return 4
	else
		return 0
	end
end

# Main program
if __FILE__ == $0
   # Prompt the user for the year
   print "Enter the year: "
   # Get the year
   year = gets
   print "Numeric code is: "
   #Output the year
   puts yearCode(year)
end

zdw3@cs-ssh:~/workspace/cs214/labs/03$ ruby year_codes.rb
Enter the year: freshman
Numeric code is: 1
zdw3@cs-ssh:~/workspace/cs214/labs/03$ ruby year_codes.rb\ 
Enter the year: sophomore
Numeric code is: 2
zdw3@cs-ssh:~/workspace/cs214/labs/03$ ruby year_codes.rb
Enter the year: junior
Numeric code is: 3
zdw3@cs-ssh:~/workspace/cs214/labs/03$ ruby year_codes.rb
Enter the year: senior
Numeric code is: 4
zdw3@cs-ssh:~/workspace/cs214/labs/03$ ruby year_codes.rb
Enter the year: nah
Numeric code is: 0
zdw3@cs-ssh:~/workspace/cs214/labs/03$ exit

Script done on Fri 19 Feb 2016 01:26:42 PM EST

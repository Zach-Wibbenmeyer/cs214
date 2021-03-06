# split.rb splits a string into two substrings.
#
# Input: A string and an integer string position to split the string by.
# Precondition: The position integer is within the range of the string size.
# Output: The substrings aString(0, position - 1) and
#   aString(pos, length() - 1).
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Zach Wibbenmeyer
# Date: March 9, 2016
#################################################################


# split() splits a string into its two substrings.
# Receive: aString, the string to be split,       
#        position, the split position.                  
# PRE: 0 <= pos < the length of aString.
# Return: the substring of aString before position, and  
#         the substring of aString from position onwards.
######################################################

def split(aString, position)
   # split the string
   results = [aString[0, position], aString[position..aString.size]]
end

# main program
def main
  # prompt the user for a string
  print "To split a string, enter the string: " 
  # receive the string
  the_string = gets
  # prompt the user for a split position
  print "Enter the split position: "
  # receive the split position
  position = gets.to_i
  split_string = split(the_string, position)
  puts "The first part is: " << split_string[0]
  puts "and the second part is: " << split_string[1]
end

main

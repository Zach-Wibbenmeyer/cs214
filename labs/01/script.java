Script started on Wed 03 Feb 2016 06:31:43 PM EST
zdw3@hopper:~/workspace/cs214/labs/01$ cat CircleArea.java
/* CircleArea.java computes the area of a circle.
 *
 * Input: The radius of the circle.
 * Precondition: The radius is a positive number.
 * Output: The area of the circle.
 *
 * Begun by: Dr. Nelesen, for CS 214, at Calvin College.
 * Completed by: Zach Wibbenmeyer
 * Date: Feb 10, 2016
 **********************************************************/


import java.util.Scanner;  // include class for Scanner

public class CircleArea
{
	/* function circleArea() computes a circle's area, given its radius.
	 * Parameter: r, a double
	 * Precondition: r is not negative.
	 * Returns: the area of the circle
	 */
	public static double circleArea(double r) {
	  return Math.PI * r * r;               // return an expression
	}
	
  // main program
  public static void main(String[] args)
    {
      // prompt for radius
      System.out.println("To compute the area of a circle, enter its radius: ");
     
      // Create a connection named keyboard to standard in
      Scanner keyboard = new Scanner(System.in); 
  
      //Get the number from the user
      double radius = keyboard.nextDouble();
      
      // output area
      System.out.println("The area is " + circleArea(radius)); 
    }
}

zdw3@hopper:~/workspace/cs214/labs/01$ j javac c CircleArea.java
zdw3@hopper:~/workspace/cs214/labs/01$ jav   java CircleArea
To compute the area of a circle, enter its radius: 
1
The area is 3.141592653589793
zdw3@hopper:~/workspace/cs214/labs/01$ java CircleArea
To compute the area of a circle, enter its radius: 
2
The area is 12.566370614359172
zdw3@hopper:~/workspace/cs214/labs/01$ java CircleArea
To compute the area of a circle, enter its radius: 
2.5
The area is 19.634954084936208
zdw3@hopper:~/workspace/cs214/labs/01$ java CircleArea
To compute the area of a circle, enter its radius: 
4.99999
The area is 78.53950218079365
zdw3@hopper:~/workspace/cs214/labs/01$ exit

Script done on Wed 03 Feb 2016 06:32:55 PM EST

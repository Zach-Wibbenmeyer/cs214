Script started on Thu 11 Feb 2016 04:19:27 PM EST
zdw3@hollerith:~/workspace/cs214/projects/01$ cat ci  rectangle_area.java
/* rectangle_area.java computes the area of a rectangle.
 *
 * Input: The two lengths of the rectangle.
 * Precondition: The lengths are positive numbers.
 * Output: The area of the rectangle.
 *
 * Begun by: Dr. Nelesen, for CS 214, at Calvin College.
 * Completed by: Zach Wibbenmeyer
 * Date: February 11, 2016
 **********************************************************/

import java.util.Scanner;   // include class for scanner

public class rectangle_area {

	/* function rectangleArea() computes a rectangle's area
	 * @param: l, w, doubles
	 * Precondition: l and w are not negative
	 * Returns: the area of the rectangle
	 */
	public static double rectangleArea(double l, double w) {
		return l * w;		// return the area
	}

   // main program
   public static void main(String[] args) {
      
      // Create a connection named keyboard to standard in
      Scanner keyboard = new Scanner(System.in);

      // prompt for the width
      System.out.println("To compute the area of the rectangle, enter the width: ");

      // Get the first length from the user
      double width = keyboard.nextDouble();

      // Prompt for the length
      System.out.println("Now enter the length: ");

      // Get the length from the user
      double length = keyboard.nextDouble();

      // output the area
      System.out.println("The area is " + rectangleArea(width, length));
   }
}
      
zdw3@hollerith:~/workspace/cs214/projects/01$ javac cir   rectangle_area.java
zdw3@hollerith:~/workspace/cs214/projects/01$ java re  rectangle_area
To compute the area of the rectangle, enter the width: 
3
Now enter the length: 
2
The area is 6.0
zdw3@hollerith:~/workspace/cs214/projects/01$ java rectangle_area
To compute the area of the rectangle, enter the width: 
5
Now enter the length: 
6
The area is 30.0
zdw3@hollerith:~/workspace/cs214/projects/01$ java rectangle_area
To compute the area of the rectangle, enter the width: 
3.5
Now enter the length: 
4.5
The area is 15.75
zdw3@hollerith:~/workspace/cs214/projects/01$ exit

Script done on Thu 11 Feb 2016 04:20:36 PM EST

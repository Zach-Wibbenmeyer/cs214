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
      

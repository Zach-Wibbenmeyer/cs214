/* Factorial.java calculates the factorial of a given double
 *
 * Input: n, a double
 * Begun by: Nelesen, for CS 214 at Calvin College.
 * Completed by: Zach Wibbenmeyer
 * Date: March 7, 2016
 ********************************************************/

import java.util.Scanner;		// Get input

/* Main class for computing the factorial of a double */
public class Factorial {

	/* factorial() method - computes the factorial of a double
	 * @param: n (type = double);
	 * @return: a double
	 * Precondition: n must be an integer double
	 */
	public static double factorial(double n) {
		// Create a local variable
		double answer = 1.0;

		// Main for loop for factorial computation
		for (int i = 2; i <= n; i++) {
			answer *= i;
		}
		return answer;
	}

	// Main program
	public static void main(String[] args) {
		// Link to the keyboard
		Scanner keyboard = new Scanner(System.in);
		// Prompt user for a number
		System.out.println("To compute n!,");
		System.out.println("enter n: ");

		// Compute the factorial using the method above
		double num = keyboard.nextDouble();
		System.out.println(factorial(num));
	}
}
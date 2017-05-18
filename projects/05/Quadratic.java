/* Quadratic.java is a program that returns two roots of the quadratic formula
 * By: Zach Wibbenmeyer
 * Date: March 11, 2016
 */

// include the necessary libraries
import java.util.Scanner;

public class Quadratic {
    
    /* quadraticRoots() method - computes the quadratic formula and returns a boolean
     *				for the given roots
     * @param: a, b, c, root1, root2 (type = doubles)
     * @return: a boolean
     * Precondition: a, b, c, root1, root2 must be positive doubles
     */
    public static boolean quadraticRoots(double a, double b, double c,
				   double [] root) {
	if (a != 0) {
	    // assign a variable to be equal to part of the formula
	    double arg = Math.pow(b, 2.0) - 4 * a * c;
	    if (arg >= 0) {
		// calculate the first root
		root[0] = (-b + Math.sqrt(arg)) / (2 * a);
		// calculate the second root
		root[1] = (-b - Math.sqrt(arg)) / (2 * a);
		return true;
	    } else {
		// print out an error
		System.out.println("\nError: quadraticRoots() - b^2 -4ac is negative!");
		// reset the roots
		root[0] = 0.0;
		root[1] = 0.0;
		return false;
	    }
	} else {
	    // print out an error
	    System.out.println("\nError: quadraticRoots() - a is zero!");
	    // reset the roots
	    root[0] = 0.0;
	    root[1] = 0.0;
	    return false;
	}
    }

    // main program
    public static void main(String[] args) {
	// create a scanner to the keyboard
	Scanner keyboard = new Scanner(System.in);
	// prompt the user for variables
	System.out.println("\nTo compute the roots of the formula,");
	System.out.println("enter in the parameters(: ");
	// create variables
	double a, b, c, root;
	// get the variables
	a = keyboard.nextDouble();
	b = keyboard.nextDouble();
	c = keyboard.nextDouble();
	// create an array
	double [] results = new double[2];
	// compute the results by calling the method
	quadraticRoots(a, b, c, results);
	// print the results
	System.out.println("\nThe first root is " + results[0] + "\n and the second root is " + results[1]);
    
    }
	        
}

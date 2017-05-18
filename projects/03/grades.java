/* grades.java is a driver for function letterGrade().
 * By: Zach Wibbenmeyer
 * Date: February 26, 2016
 ****************************************************************/


// Import the necessary libraries
import java.util.Scanner;


public class grades {

   /* letterGrade() method - Displays the letter grade for the given average
    * @param: average (type = int)
    * @return: various letter grades (type = char)
    * Precondition: An int for the average must be entered
    */
   public static char letterGrade(int average) {
      // Calculates the average
      switch (average / 10) {
	 // Various cases
         case 10: case 9:
		    return 'A';
		 case 8:
		    return 'B';
		 case 7:
		    return 'C';
		 case 6:
		    return 'D';
		 default:
		    return 'F';
	  }
   }


   // Main program
   public static void main(String[] args) {
      // Prompt for the average
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nEnter the average score: ");

      // Read the average
      int avg = keyboard.nextInt();
      // Print the letter grade
      System.out.println(letterGrade(avg));
   }
}

/* Split.java is a class and program that splits a string
 * into two substrings.
 * 
 * Begun by: Serita Nelesen
 * Completed by: Zach Wibbenmeyer
 * Date: March 9, 2016
 ***************************************************************/

// import the necessary libraries
import java.util.Scanner;

// java class Split
public class Split
{
  // main program
  public static void main(String[] args)
    {
      Scanner keyboard = new Scanner(System.in);
      // prompt for the string
      System.out.println("\nTo split a string, enter the string: ");
      String theString = keyboard.next();
      
      // prompt for splitting position
      System.out.println("\nEnter the split position: ");
      int position = keyboard.nextInt();

      //Create list, compute results and print
      String [] resultList = new String[2];
      splitter(theString, position, resultList);
      System.out.println("\nThe first part is " + resultList[0] + "\n and the second part is " + resultList[1]);
      
    }
  
  /* splitter() splits a string according to the position specified
   * Receive: 	theString - the string to be split
   * 		pos - the position at which to split
   *            results - an array of strings in which to place results
   *****************************************************/
  // replace this line with a definition for splitter

  public static void splitter(String theString, int pos, String[] results) {
      
      // calculate the first part of the string
      results[0] = theString.substring(0, pos);
      // calculate the second part of the string
      results[1] = theString.substring(pos, theString.length() );
  }


}

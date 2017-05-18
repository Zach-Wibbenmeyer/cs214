Script started on Fri 19 Feb 2016 09:35:49 AM EST
zdw3@babbage:~/workspace/cs214/labs/03$ cat s java    year_codes.java
/* year_codes.java is a driver for function yearCode().
 * Begun by: Serita Nelesen, for CS 214 at Calvin College.
 * By: Zach Wibbenmeyer
 * Date: February 24, 2016
 ****************************************************************/
import java.util.Scanner;

public class year_codes {

   public static void main(String[] args) {
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nEnter your academic year: "); // prompt

      String year = keyboard.next();       // read year
      System.out.println(yearCode(year)); // display its code
   }

   /***************************************************************
    * yearCode() converts an academic year into its integer code. *
    * Receive: year, a string.
    * PRE: year is one of {freshman, sophomore, junior, or senior}.
    * Return: the integer code corresponding to year.
    */

   public static int yearCode(String year) {
      if (year.equals("freshman"))
         return 1;
      else if (year.equals("sophomore"))
	 return 2;
      else if (year.equals("junior"))
	 return 3;
      else if (year.equals("senior"))
	 return 4;
      else
	 return 0;
   }

}
zdw3@babbage:~/workspace/cs214/labs/03$ javac year_codes.java
zdw3@babbage:~/workspace/cs214/labs/03$ java year_codes. 

Enter your academic year: 
freshman
1
zdw3@babbage:~/workspace/cs214/labs/03$ java year_codes

Enter your academic year: 
soh phomore
2
zdw3@babbage:~/workspace/cs214/labs/03$ java year_codes

Enter your academic year: 
junji   nior
3
zdw3@babbage:~/workspace/cs214/labs/03$ java year_codes

Enter your academic year: 
senior
4
zdw3@babbage:~/workspace/cs214/labs/03$ java year_codes

Enter your academic year: 
nah
0
zdw3@babbage:~/workspace/cs214/labs/03$ exit

Script done on Fri 19 Feb 2016 09:36:30 AM EST

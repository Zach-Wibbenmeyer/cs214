;;; grades.el is a driver function for letterGrade
;;; By: Zach Wibbenmeyer
;;; Date: February 26, 2016
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; letterGrade() method - returns a letter grade for the given average
;;; @param: average (type = int)
;;; @return: a grade (type = character)
;;; Precondition: average must be an integer
(defun letterGrade (average)
  (cond ((>= (/ average 10) 10) "A")
	((>= (/ average 10) 9) "A")
	((>= (/ average 10) 8) "B")
	((>= (/ average 10) 7) "C")
	((>= (/ average 10) 6) "D")
	(t "F")))

;;; Compile the letterGrade method
letterGrade

;;; Main program
(defun main (avg)
  ;;; Prompt for the average
  (interactive "sEnter the average grade: ")
  ;;; Compute the letter grade
  (message (letterGrade avg)))

;;; Compile the main method
main




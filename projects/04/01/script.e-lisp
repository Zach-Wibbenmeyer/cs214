;;; rectangle_area.el computes the area of a rectangle. 
;;;                                                                     
;;; Input: The length and width of the rectangle. 
;;; Precondition: The length and width are positive numbers.                
;;; Output: The area of the rectangle.                                    
;;; 
;;; Begun by: Dr. Nelesen, for CS 214 at Calvin College.
;;; Completed by: Zach Wibbenmeyer
;;; Date: February 12, 2016
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                   

;;; function rectangleArea computes a rectangle's area
;;; @param: l, w, numbers
;;; Precondition: l and w and positive
;;; Return: the area of the rectangle
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Create a function
(defun rectangleArea (length width)
  ;;; Calculate the area of the rectangle
  "Compute the area of the rectangle, passed it's length and width."
  (* length width))

rectangleArea

;;; Create a function
(defun rectangle_area(l w)
  "Compute the area of the rectangle, given it's length and width interactively."
  
  ;;; Prompt the user for the length and width
  (interactive "nLength: \nnWidth: ")
  
  ;;; Calculate the area
  (setq area (rectangleArea l w))
 
  ;;; Print the area
  (message "The rectangle's area is %f." area))

rectangle_area



(rectangleArea 2 3)
6

(rectangleArea 5 6)
30

(rectangleArea 3.5 4.5)
15.75


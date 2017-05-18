;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

;;; circle_area.el computes the area of a circle. 
;;;                                                                     
;;; Input: The radius of the circle.                                    
;;; Precondition: The radius is a positive number.                      
;;; Output: The area of the circle.                                     
;;; 
;;; Begun by: Dr. Nelesen, for CS 214 at Calvin College.
;;; Completed by: Zach Wibbenmeyer
;;; Date: Feb 10, 2016
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                   

;;; function circleArea computes a circle's area, given its radius.     
;;; Parameters: r, a number.                                            
;;; Precondition: r >= 0.                                               
;;; Returns: the area of the circle whose radius is r.                   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                  
(defun circleArea (radius)
;;; Create the function CircleArea
  "Compute the area of a circle, passed its radius."
  ;;; Create a constant for PI
  (defconst PI 3.1415927)            
  (* PI (* radius radius)))         

circleArea
;;; Compile the function CircleArea

;;; Create a function circle_area
(defun circle_area(r)
 "Compute the area of a circle, given its radius interactively."
  (interactive "nRadius: ")      
  ;;; Call the function CircleArea
  (setq area (circleArea r))      
  (message "The circle's area is %f." area))

;;; Compile the function circle_area
circle_area

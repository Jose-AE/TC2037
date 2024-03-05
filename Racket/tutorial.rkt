#lang racket

;Syntax 
;(funcName arg1 arg2 ... ) 

(display "Hello") ;Print
(+ 1 2) ; Add 1+2
(not #f)  ;Invert False


(define myVar 16);Define variable
(display myVar)



#|

(let ((variable1 value1)
      (variable2 value2)
      ...
      (variablen valuen))
  body)

|#

(let ((x 5) ;Define local value of x
      (y 10)) ;Define local value of y
  (+ x y)) ;Use x and y 


(let* ((x 5) ;Define local value of x
    (y (+ x 10))) ;Define local value of y using another local value (thats why we use let*)
(+ x y)); Use x and y 


(struct dog (name breed age))
(define myDog (dog "Bob" "Br" 47))
(dog? myDog) ;is myDog a struct of dog?
(dog-name myDog) ;get myDog name



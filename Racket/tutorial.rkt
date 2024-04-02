#lang racket

;Syntax

;functions that return a simple value
(define pi 3.14)
(define name "Osomar")

;functions that return the value of other functions

(define sum (+ 1 1)) ; return the sum of 1+1

(define (custom-sum a b) ; return sum of a+b
  (+ a b))

(define (mean a b) ; return result of (a+b)/2
  (/ (+ a b) 2))

(mean 3 5) ; call function // out: 4

;---------------Boolean logic---------------
#f ;true
#t ;false

(or #f #f #t) ;out: #t

;(if A B C) = if A is true evualuate B, else C

(if #t "The input is true" "The input is false") ; out: "The input is true"

(exact? 1) ;returns true if its an exact value (no decimal),
;the "?" is not an operator its part of the function name to idicate it returns a bool

;---------------Lists and Pairs---------------

;pair data type
(cons 1 2) ;out: '(1 . 2)

(define my-pair (cons 1 2))
(car my-pair) ;acces first element OUT: 1
(cdr my-pair) ;acces second element OUT: 2

;List data type (linked list made from pairs)
(list 1 2 3 4) ; out: '(1 2 3 4)
;Same as doing
(define my-list (cons 1 (cons 2 (cons 3 (cons 4 null)))))

(list-ref my-list 0) ;acces index 0 of myList, OUT: 1

(length my-list) ; get list length

(append my-list (list 1 2 3)) ; append another list at the end of myList

(map add1 my-list) ;run the functon "add1" en every element of my-list

(define my-list1 (list 1 2 3 4))
(define my-list2 (list 3 4 5 6))

(map + my-list1 my-list2) ; run the function "+" on the i element of list1 and list2
; out; `(4 6 8 10)

;Filtering elements
(define (less-than-4 n)
  (< n 4))

(filter less-than-4 my-list2) ;return list with elements less than 4 from list2

#lang racket

;fahrenheit-to-celsius
(display "\n---fahrenheit-to-celsius---\n")
(define (fahrenheit-to-celsius f)
  (* 5 (/ (- f 32) 9)))

(fahrenheit-to-celsius 212)
(fahrenheit-to-celsius 32)
(fahrenheit-to-celsius -40)

;sign
(display "\n---sign---\n")

(define (sign n)
  (if (< n 0) -1 (if (> n 0) 1 0)))

(sign -5)
(sign 10)
(sign 0)

;roots
(display "\n---roots---\n")

(define (roots a b c)

  (/ (+ (- 0 b) (sqrt (- (* b b) (* 4 (* a c))))) (* 2 a)))

(roots 2 4 2)

(roots 1 0 0)

(roots 4 5 1)

; bmi
(display "\n---bmi---\n")
(define (calc-bmi w h)
  (/ w (* h h)))

(define (bmi h w)
  (let ([bmi-val (calc-bmi h w)])

    (cond
      [(< bmi-val 20) 'underweight]
      [(<= bmi-val 20) 'normal]
      [(< bmi-val 25) 'normal]
      [(<= bmi-val 25) 'obese1]
      [(< bmi-val 30) 'obese1]
      [(<= bmi-val 30) 'obese2]
      [(< bmi-val 40) 'obese2]
      [else 'obese3])))

(bmi 45 1.7)
(bmi 55 1.5)
(bmi 76 1.7)
(bmi 81 1.6)
(bmi 120 1.6)

;facotrial
(display "\n---factorial---\n")
(define (factorial n)
  (if (= n 0) 1 (* (factorial (- n 1)) n)))

(factorial 0)
(factorial 5)
(factorial 40)

;duplicate
(display "\n---duplicate---\n")

(define (duplicate lst)
  (if (null? lst) '() (append-map (lambda (x) (list x x)) lst)))

(duplicate `())
(duplicate '(1 2 3 4 5))
(duplicate '(a b c d e f g h))

;pow
(display "\n---pow---\n")

(define (pow a b)

  (if (= b 0) 1 (* a (pow a (sub1 b)))))

(pow 5 0)
(pow -5 3)
(pow 15 12)

;fib
(display "\n---fib---\n")
(define (fib n)
  (cond
    [(<= n 1) n]
    [(> n 1) (+ (fib (- n 1)) (fib (- n 2)))]))

(fib 6)
(map fib (range 10))
;(fib 42)

;enlist
(display "\n---enlist---\n") ;

(define (enlist lst)

  (if (null? lst) `() (map (lambda (v) (list v)) lst)))

(enlist '())
(enlist '(a b c))
(enlist '((1 2 3) 4 (5) 7 8))

;positives
(display "\n---positives---\n") ;
(define (positives lst)

  (if (null? list) `() (filter (lambda (v) (positive? v)) lst)))

(positives '())
(positives '(12 -4 3 -1 -10 -13 6 -5))
(positives '(-4 -1 -10 -13 -5))

;add-list
(display "\n---add-list---\n") ;

(define (add-list lst)
  (let ([sum 0])
    (map (lambda (x) (set! sum (+ sum x))) lst)
    sum))

(add-list '())
(add-list '(2 4 1 3))
(add-list '(1 2 3 4 5 6 7 8 9 10))

;invert-pairs
(display "\n---invert-pairs---\n") ;
(define (invert-pairs lst)

  (map (lambda (v) (list (car (cdr v)) (car v))) lst))

(invert-pairs '())
(invert-pairs '((a 1) (a 2) (b 1) (b 2)))
(invert-pairs '((January 1) (February 2) (March 3)))

; list-of-symbols?
(display "\n---list-of-symbols?---\n") ;

(define (list-of-symbols? lst)

  (let ([filtered-list (filter (lambda (v) (symbol? v)) lst)])

    (if (= (length filtered-list) (length lst)) #t #f)))

(list-of-symbols? '())
(list-of-symbols? '(a b c d e))
(list-of-symbols? '(a b c d 42 e))

;swapper
(display "\n---swapper ---\n") ;

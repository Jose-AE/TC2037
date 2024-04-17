#lang racket

;1)
(display "\n---[1]---\n")
(define (insert n lst)
  (cond
    [(empty? lst) (list n)]
    [(<= n (first lst)) (cons n lst)]
    [else (cons (first lst) (insert n (rest lst)))]))

(insert 14 '())
(insert 4 '(5 6 7 8))
(insert 5 '(1 3 6 7 9 16))
(insert 10 '(1 5 6))

;2)
(display "\n---[2]---\n")

(define (insertion-sort lst)
  (define (insertion-sort-helper unsorted sorted)
    (if (null? unsorted)
        sorted
        (insertion-sort-helper (cdr unsorted) (insert (car unsorted) sorted))))
  (insertion-sort-helper lst '()))

(insertion-sort '())
(insertion-sort '(4 3 6 8 3 0 9 1 7))
(insertion-sort '(1 2 3 4 5 6))
(insertion-sort '(5 5 5 1 5 5 5))

;3)
(display "\n---[3]---\n")
(define (rotate-left n lst)
  (cond
    [(null? lst) '()]
    [else
     (let* ([len (length lst)] [n (modulo n len)] [rotated (append (drop lst n) (take lst n))])
       rotated)]))

(rotate-left 5 '())
(rotate-left 0 '(a b c d e f g))
(rotate-left 1 '(a b c d e f g))
(rotate-left -1 '(a b c d e f g))
(rotate-left 3 '(a b c d e f g))
(rotate-left -3 '(a b c d e f g))
(rotate-left 8 '(a b c d e f g))
(rotate-left -8 '(a b c d e f g))
(rotate-left 45 '(a b c d e f g))
(rotate-left -45 '(a b c d e f g))

;4)
(display "\n---[4]---\n")
(define (prime-factors n)
  (cond
    [(= n 1) '()]
    [else
     (let loop ([n n] [i 2] [factors '()])
       (cond
         [(= n 1) factors]
         [(= (modulo n i) 0) (loop (/ n i) i (cons i factors))]
         [else (loop n (+ i 1) factors)]))]))

(prime-factors 1)
(prime-factors 6)
(prime-factors 96)
(prime-factors 97)
(prime-factors 666)

;5)
(display "\n---[5]---\n")

(define (gcd a b)
  (cond
    [(= b 0) a]
    [else (gcd b (modulo a b))]))

(gcd 13 7919)
(gcd 20 16)
(gcd 54 24)
(gcd 6307 1995)
(gcd 48 180)
(gcd 42 56)

;6)
(display "\n---[6]---\n")
(define (deep-reverse lst)
  (cond
    [(null? lst) '()]
    [(list? (car lst)) (append (deep-reverse (cdr lst)) (list (deep-reverse (car lst))))]
    [else (append (deep-reverse (cdr lst)) (list (car lst)))]))

(deep-reverse '())
(deep-reverse '(a (b c d) 3))
(deep-reverse '((1 2) 3 (4 (5 6))))
(deep-reverse '(a (b (c (d (e (f (g (h i j)))))))))

;7)
(display "\n---[7]---\n")
(define (insert-everywhere x lst)
  (if (null? lst)
      (list (list x))
      (let loop ([lst lst] [prefix '()] [result (list (append lst (list x)))])
        (if (null? lst)
            result
            (loop (cdr lst)
                  (append prefix (list (car lst)))
                  (cons (append prefix (list x) lst) result))))))

(insert-everywhere 1 '())
(insert-everywhere 1 '(a))
(insert-everywhere 1 '(a b c))
(insert-everywhere 1 '(a b c d e))
(insert-everywhere 'x '(1 2 3 4 5 6 7 8 9 10))

;8)
(display "\n---[8]---\n")

(define (pack lst)
  (cond
    [(null? lst) '()]
    [else
     (let loop ([lst lst] [result '()] [current-group '()])
       (cond
         [(null? lst) (if (null? current-group) result (cons current-group result))]
         [(or (null? current-group) (equal? (car lst) (car current-group)))
          (loop (cdr lst) result (cons (car lst) current-group))]
         [else (loop (cdr lst) (cons (reverse current-group) result) (list (car lst)))]))]))

(pack '())
(pack '(a a a a b c c a a d e e e e))
(pack '(1 2 3 4 5))
(pack '(9 9 9 9 9 9 9 9 9))

;9)
(display "\n---[9]---\n")

(define (compress lst)
  (cond
    [(null? lst) '()]
    [else
     (let loop ([lst lst] [result '()] [last-element #f])
       (cond
         [(null? lst) (reverse result)]
         [(equal? (car lst) last-element) (loop (cdr lst) result last-element)]
         [else (loop (cdr lst) (cons (car lst) result) (car lst))]))]))

(compress '())
(compress '(a b c d))
(compress '(a a a a b c c a a d e e e e))
(compress '(a a a a a a a a a a))

;10)
(display "\n---[10]---\n")

(define (encode lst)
  (if (null? lst)
      '()
      (let loop ([lst lst] [current (car lst)] [count 0] [result '()])
        (if (null? lst)
            (append result (list (list count current)))
            (if (eq? (car lst) current)
                (loop (cdr lst) current (+ count 1) result)
                (loop (cdr lst) (car lst) 1 (append result (list (list count current)))))))))

(encode '())
(encode '(a a a a b c c a a d e e e e))
(encode '(1 2 3 4 5))
(encode '(9 9 9 9 9 9 9 9 9))

;11)
(display "\n---[11]---\n")
(define (encode-modified lst)
  (if (null? lst)
      '()
      (let loop ([lst lst] [current (car lst)] [count 0] [result '()])
        (if (null? lst)
            (append result (if (= count 1) (list current) (list (list count current))))
            (if (eq? (car lst) current)
                (loop (cdr lst) current (+ count 1) result)
                (loop (cdr lst)
                      (car lst)
                      1
                      (append result
                              (if (= count 1) (list current) (list (list count current))))))))))

(encode-modified '())
(encode-modified '(a a a a b c c a a d e e e e))
(encode-modified '(1 2 3 4 5))
(encode-modified '(9 9 9 9 9 9 9 9 9))

;12)
(display "\n---[12]---\n")

(define (decode lst)
  (if (null? lst)
      '()
      (let ([item (car lst)])
        (if (list? item)
            (append (make-list (car item) (cadr item)) (decode (cdr lst)))
            (cons item (decode (cdr lst)))))))

(decode '())
(decode '((4 a) b (2 c) (2 a) d (4 e)))
(decode '(1 2 3 4 5))
(decode '((9 9)))

;13)
(display "\n---[13]---\n")

(define (args-swap f)
  (lambda (x y) (f y x)))

((args-swap list) 1 2)
((args-swap /) 8 2)
((args-swap cons) '(1 2 3) '(4 5 6))
((args-swap map) '(-1 1 2 5 10) /)

;14)
(display "\n---[14]---\n")

(define (there-exists-one? pred lst)
  (let ([filtered (filter pred lst)]) (and (not (null? filtered)) (null? (cdr filtered)))))

(there-exists-one? positive? '())
(there-exists-one? positive? '(-1 -10 4 -5 -2 -1))
(there-exists-one? negative? '(-1))
(there-exists-one? symbol? '(4 8 15 16 23 42))
(there-exists-one? symbol? '(4 8 15 sixteen 23 42))

;15)
(display "\n---[15]---\n")

(define (linear-search lst x eq-fun)
  (let loop ([lst lst] [index 0])
    (cond
      [(null? lst) #f]
      [(eq-fun x (car lst)) index]
      [else (loop (cdr lst) (+ index 1))])))

(linear-search '() 5 =)
(linear-search '(48 77 30 31 5 20 91 92 69 97 28 32 17 18 96) 5 =)
(linear-search '("red" "blue" "green" "black" "white") "black" string=?)
(linear-search '(a b c d e f g h) 'h equal?)

;16)
(display "\n---[16]---\n")

(define (deriv f h)
  (lambda (x) (/ (- (f (+ x h)) (f x)) h)))

(define f (lambda (x) (* x x x)))
(define df (deriv f 0.001))
(define ddf (deriv df 0.001))
(define dddf (deriv ddf 0.001))

(df 5)
(ddf 5)
(dddf 5)

;17)
(display "\n---[17]---\n")

(define (newton f n)
  (let ([f-prime (deriv f 0.0001)])
    (let loop ([x 0] [n n])
      (if (= n 0) x (loop (- x (/ (f x) (f-prime x))) (- n 1))))))
(newton (lambda (x) (- x 10)) 1)
(newton (lambda (x) (+ (* 4 x) 2)) 1)
(newton (lambda (x) (+ (* x x x) 1)) 50)
(newton (lambda (x) (+ (cos x) (* 0.5 x))) 5)

;18)
(display "\n---[18]---\n")

(define (integral a b n f)
  (let ([h (/ (- b a) n)])
    (let loop ([k 0] [sum 0])
      (if (> k n)
          (* (/ h 3) sum)
          (let ([x (+ a (* k h))])
            (loop (+ k 1)
                  (+ sum
                     (* (cond
                          [(or (= k 0) (= k n)) 1]
                          [(odd? k) 4]
                          [else 2])
                        (f x)))))))))

(integral 0 1 10 (lambda (x) (* x x x)))
(integral 1 2 10 (lambda (x) (integral 3 4 10 (lambda (y) (* x y)))))

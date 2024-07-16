#lang sicp
;1.3
(define (first l) (car l))
(define (second l) (cadr l))

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x)
     (square y)))

(define (sum-square-list l)
  (sum-of-squares (first l) (second l)))

(define (largest-two sorted-l-desc)
  (list (first sorted-l-desc) (second sorted-l-desc)))

(define (sum-of-two-largest-squares x y z)
  (sum-square-list (largest-two (list x y z))))

(define (get-greater x y)
  (if (>= x y) x y))

(define (sum-of-two-largest-squares-easier x y z)
  (cond ((<= x y z) (sum-of-squares y z))
        ((<= y x z) (sum-of-squares x z))
        (else (sum-of-squares x y))))

; Trying to express folding a descending order list of the
; params. TODO.

(define val (sum-of-two-largest-squares-easier 1 2 3))
val
(and (number? val) (= val 13))
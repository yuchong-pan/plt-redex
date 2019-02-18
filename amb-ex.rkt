#lang racket

(require redex)
(require "amb.rkt")

;; Exercise 1

(redex-match
 L
 ((λ (_ _) e) _)
 (term ((λ (x num) (+ x 1))
        17)))

;; Exercise 2

(redex-match
 L
 (→ _ t)
 (term (→ num (→ num num))))

;; Exercise 3

(redex-match
 L
 (_ ... e_1 e_2 _ ...)
 (term (1 2 3 4)))

;; Exercise 4

(redex-match
 L
 (_ ..._1 e_1 _ ..._2 _ _ ..._2 e_2 _ ..._1)
 (term (1 2 3 4 5)))

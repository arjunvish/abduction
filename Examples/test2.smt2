(set-logic QF_UFLIA)
(declare-fun x () Int)
(declare-fun y () Int)
(declare-fun f (Int Int) Int)
(assert (>= (f x y) 0))


;(get-abduct A (<= 0 (f y x)))

;cvc5 --produce-abducts test2.smt2
;(define-fun A () Bool (= y x))

;(define-fun A () Bool (= y x))
;(define-fun A () Bool (= 0 (f y x)))
;(define-fun A () Bool (<= 0 (f y x)))
;(define-fun A () Bool (= (f y x) (f x y)))
;(define-fun A () Bool (<= (f x y) (f y x)))
;(define-fun A () Bool (= y (ite (<= 0 y) x (f x y))))
;(define-fun A () Bool (= y (ite (<= y (f x y)) x 0)))
;(define-fun A () Bool (= y (ite (<= 0 (f x y)) x y)))

;unsat core learning
;cvc5 --produce-abducts --sygus-core-connective test2.smt2
;(define-fun A () Bool (= y x))

;(define-fun A () Bool (= y x))
;(define-fun A () Bool (and (= y (f x y)) (= y (f y x))))
;(define-fun A () Bool (and (= y (- x y)) (and (= y (f x y)) (and (= y (f y y)) (<= x y)))))
;(define-fun A () Bool (and (<= y (f y 0)) (and (<= 0 x) (and (not (<= y 1)) (<= x 0)))))
;(define-fun A () Bool (and (= y (f x 1)) (and (<= y (f y 1)) (and (= x 1) (<= x y)))))
;(define-fun A () Bool (and (= y (+ x 1)) (and (<= y (f y 1)) (= x 1))))
;(define-fun A () Bool (and (<= y (f y 1)) (and (= x 1) (not (<= y 1)))))
;(define-fun A () Bool (and (= y (- 0 x)) (and (<= y (f y x)) (not (<= y 1)))))
;(define-fun A () Bool (= 0 (f y x)))
;(define-fun A () Bool (and (<= 0 (+ y x)) (and (<= x (f y 1)) (and (<= y (+ x 1)) (and (= y (+ x x)) (not (<= y x)))))))
;(define-fun A () Bool (<= 0 (f y x)))

(set-logic QF_LIA)
(declare-fun x () Int)
(declare-fun y () Int)
(declare-fun z () Int)
(assert (>= y 0))


(get-abduct A (>= (+ x y z) 0))

;cvc5 --produce-abducts test1.smt2
;(define-fun A () Bool (= (+ x z) y))

;(define-fun A () Bool (= x (- y z)))
;(define-fun A () Bool (= x (- 0 z)))
;(define-fun A () Bool (= x (- 1 z)))
;(define-fun A () Bool (<= y (+ x z)))
;(define-fun A () Bool (<= 0 (+ x z)))

;unsat core learning
;cvc5 --produce-abducts --sygus-core-connective test1.smt2 
(define-fun A () Bool (and (= x z) (= x y)))

;(define-fun A () Bool (and (= x z) (= x y)))
;(define-fun A () Bool (and (= x 0) (= x z)))
;(define-fun A () Bool (and (= x 1) (= x z)))
;(define-fun A () Bool (and (<= y z) (and (= x 1) (= x y))))
;(define-fun A () Bool (and (<= y z) (and (<= 1 x) (= x y))))
;(define-fun A () Bool (and (<= 1 z) (= x y)))
;(define-fun A () Bool (and (<= 1 x) (<= 1 z)))


;remove = from grammar
;(get-abduct A
;  (>= (+ x y z) 0)
;  ((GA Bool) (GI Int))
;  (
;  (GA Bool ((>= GI GI) (<= GI GI) (> GI GI) (< GI GI)))
;  (GI Int ((+ GI GI) (- GI GI) (- GI) x y z 0 1))
;  )
;)

;cvc5 --produce-abducts test1.smt2
;(define-fun A () Bool (>= x (- z)))
;(define-fun A () Bool (>= x (- z)))
;(define-fun A () Bool (>= x (- y z)))
;(define-fun A () Bool (>= x (- (+ y z))))
;(define-fun A () Bool (>= x (+ y (- y z))))
;(define-fun A () Bool (>= x (+ y (+ y (- y z)))))
;(define-fun A () Bool (>= x (+ y (+ y (+ y (- y z))))))
;(define-fun A () Bool (>= x (+ y (+ y (+ y (+ y (- y z)))))))

;unsat core learning
;cvc5 --produce-abducts --sygus-core-connective test1.smt2
;(define-fun A () Bool (>= x (- z)))

;(define-fun A () Bool (>= x (- z)))
;(define-fun A () Bool (>= x (- y z)))
;(define-fun A () Bool (>= x (- (+ y z))))
;(define-fun A () Bool (>= x (+ y (- y z))))
;(define-fun A () Bool (>= x (+ y (+ y (- y z)))))
;(define-fun A () Bool (>= x (+ y (+ y (+ y (- y z))))))
;(define-fun A () Bool (>= x (+ y (+ y (+ y (+ y (- y z)))))))

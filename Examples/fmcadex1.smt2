;Example to motivate cvc5_abduct in the FMCAD student forum, part 1
(set-option :produce-models true)
(set-logic QF_UFLIA)
(declare-fun f (Int Int ) Int)
(declare-fun x () Int)
(declare-fun y () Int)
(declare-fun z () Int)
(assert (= x (+ y 1)))
(assert (not (= (f y z) (f z (- x 1)))))
(check-sat)
(get-model)
;sat
;(
;(define-fun f ((_arg_1 Int) (_arg_2 Int)) Int (- 1))
;(define-fun x () Int 1)
;(define-fun y () Int 0)
;(define-fun z () Int 1)
;)

;need more info about f from Coq

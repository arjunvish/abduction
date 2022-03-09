(set-option :print-success false)
(set-option :produce-models true)
(set-logic QF_LIA)
(declare-fun x () Int)
(declare-fun y () Int)
(assert (= (+ x (* 2 y)) 20))
(assert (= (- x y) 2))
(check-sat)
(get-model)
; ((define-fun x () Int 8)
;  (define-fun y () Int 6)
; )
(exit)

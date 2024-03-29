(set-option :produce-models true)
(set-option :global-declarations true)
;(set-option :produce-unsat-cores true)
(set-option :produce-abducts true)
(set-option :incremental true)
(set-logic ALL)

(push 1)
(declare-fun y () Int)
(define-fun x!0 () Bool (<= 0 y))
(assert x!0)
(declare-fun x () Int)
(declare-fun z () Int)
(define-fun x!1 () Int (+ z y x))
(define-fun x!2 () Bool (<= 0 x!1))
;(assert false)
(check-sat)
;(get-unsat-core)
(get-abduct abd x!2) ;((GBool Bool) (GInt Int))
;((GBool Bool ((= GInt GInt) (and GBool GBool) (>= GInt GInt)))
;(GInt Int (x y z 0 (+ GInt GInt) (- GInt GInt)))))
;(get-abduct-next)
;(get-abduct-next)
;(get-abduct-next)
(get-value (abd)
(pop 1)
(declare-fun z () Bool)
(assert (= abd z))
(check-sat)
(get-model)
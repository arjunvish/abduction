(set-option :produce-models true)
;(set-option :global-declarations true)
(set-option :produce-abducts true)
(set-option :incremental true)
(set-logic QF_LIA)
(declare-fun y () Int)
(define-fun x!0 () Bool (<= 0 y))
(declare-fun x () Int)
(declare-fun z () Int)
(define-fun x!1 () Int (+ z y x))
(define-fun x!2 () Bool (<= 0 x!1))
(assert x!0)
(get-abduct abd x!2)
(get-abduct-next)
(get-abduct-next)
(get-abduct-next)
(get-abduct-next)

;with (set-option :global-declarations false):

;cvc5 uses grammar:
;(sygus-grammar __internal_abduct
;((__internal_abduct_Bool Bool) (__internal_abduct_Int Int) )
;((__internal_abduct_Bool Bool ((Constant Bool) true false (= __internal_abduct_Int __internal_abduct_Int)
;    (<= __internal_abduct_Int __internal_abduct_Int) (not __internal_abduct_Bool)
;    (and __internal_abduct_Bool __internal_abduct_Bool) (or __internal_abduct_Bool __internal_abduct_Bool) ))
;(__internal_abduct_Int Int ((Constant Int) z x y 0 1 (+ __internal_abduct_Int __internal_abduct_Int)
;    (- __internal_abduct_Int __internal_abduct_Int)
;    (ite __internal_abduct_Bool __internal_abduct_Int __internal_abduct_Int) ))
;))

;abducts:
;(define-fun abd () Bool (= (+ z x) y))
;(define-fun abd () Bool (= (+ z x) 0))
;(define-fun abd () Bool (= (+ z x) 1))
;(define-fun abd () Bool (<= y (+ z x)))
;(define-fun abd () Bool (<= 0 (+ z x)))

;with (set-option :global-declarations true):

;cvc5 uses grammar:
;(sygus-grammar __internal_abduct
;((__internal_abduct_Bool Bool) )
;((__internal_abduct_Bool Bool ((Constant Bool) x!2 x!0 true false
;    (not __internal_abduct_Bool) (and __internal_abduct_Bool __internal_abduct_Bool)
;    (or __internal_abduct_Bool __internal_abduct_Bool) ))
;))
;the `define-fun`s aren't expanded before the abduct is produced, which is unintended behavior
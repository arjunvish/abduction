(set-option :produce-models true)
(set-option :global-declarations true)
(set-option :produce-unsat-cores true)
(set-option :produce-abducts true)
(set-logic ALL)
(get-info :error-behavior)
(push 1)

(declare-fun x () (_ BitVec 8))
(define-fun x!0 () Bool (= (_ bv1 8) x))
(assert (! x!0 :named x!1))

(declare-fun y () (_ BitVec 8))
(define-fun x!2 () (_ BitVec 8) (bvand x y))
(define-fun x!3 () Bool (= (_ bv1 8) x!2))
(define-fun x!4 () Bool (not x!3))
(push 2)
(assert (! x!4 :named x!5))
(check-sat)
(get-value (x))
(get-value (y))
(pop 2)
(get-abduct abd x!3)
(get-abduct-next)
(get-abduct-next)
(pop 1)
(exit)
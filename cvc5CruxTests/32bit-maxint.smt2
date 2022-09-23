(set-option :produce-models true)
(set-option :global-declarations true)
(set-option :produce-unsat-cores true)
(set-option :produce-abducts true)
(set-logic ALL)
(get-info :error-behavior)
(push 1)

(declare-fun x () (_ BitVec 32))
(define-fun x!0 () Bool (= (_ bv4294967295 32) x))
(push 2)
(assert (! x!0 :named x!1))
(check-sat)
(get-value (x))
(pop 2)
(define-fun x!2 () Bool (not x!0))
(get-abduct abd x!2)
(get-abduct-next)
(get-abduct-next)
(pop 1)
(exit)
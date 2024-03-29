(set-option :print-success true)
(set-option :produce-models true)
(set-option :global-declarations true)
(set-option :produce-unsat-cores true)
(set-option :produce-abducts true)
(set-logic ALL)
(get-info :error-behavior)
(push 1)

(declare-fun x () (_ BitVec 32))
(define-fun x!0 () Bool (bvslt x (_ bv100 32)))
(assert (! x!0 :named x!1))
(push 1)

(define-fun x!2 () Bool (bvslt x (_ bv0 32)))
(define-fun x!3 () (_ BitVec 32) (bvadd x (_ bv1 32)))
(define-fun x!4 () Bool (bvslt x!3 (_ bv0 32)))
(define-fun x!5 () Bool (and (not x!2) x!4))
(define-fun x!6 () Bool (not x!5))
(define-fun x!7 () Bool (not x!6))
(push 2)
(assert (! x!7 :named x!8))
(check-sat)
(get-unsat-core)


(pop 2)
(pop 1)
(define-fun x!9 () (_ BitVec 32) (bvadd x (_ bv1 32)))
(define-fun x!10 () Bool (bvslt x!9 (_ bv100 32)))
(define-fun x!11 () Bool (not x!10))
(push 2)
(assert (! x!11 :named x!12))
(check-sat)
(get-value (x))
(pop 2)
(get-abduct abd x!10)
(get-abduct-next)
(get-abduct-next)
(pop 1)
(exit)

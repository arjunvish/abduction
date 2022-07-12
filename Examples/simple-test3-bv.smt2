(set-option :produce-abducts true)
(set-option :incremental true)
(set-logic QF_BV)
(declare-fun x () (_ BitVec 4))
(declare-fun y () (_ BitVec 4))
(declare-fun z () (_ BitVec 4))
(assert (bvsge y #b0000))

(get-abduct A (bvsge (bvadd x (bvadd y z)) #b0000))
(get-abduct-next)
;cvc5 --produce-abducts --incremental testbv.smt2
;(define-fun A () Bool (= (bvneg x) z))
;(define-fun A () Bool (= (bvneg z) x))

;cvc5 --produce-abducts --incremental --sygus-core-connective testbv.smt2 
;(define-fun A () Bool (and (= z #b0000) (= z x)))
;(define-fun A () Bool (and (= z #b0000) (= z x)))

;cvc5 --produce-abducts --incremental --sygus-stream testbv.smt2 
;(define-fun __internal_abduct () Bool (= z (bvneg x)))
;(define-fun __internal_abduct () Bool (= z (bvneg (bvor x y))))
;(define-fun __internal_abduct () Bool (= z (bvneg (bvadd x y))))
;(define-fun __internal_abduct () Bool (= z (bvmul x (bvsdiv y #b0000))))
;(define-fun __internal_abduct () Bool (bvult z (bvlshr y (bvadd x y))))
;(define-fun __internal_abduct () Bool (bvult z (bvashr y (bvadd x y))))
;(define-fun __internal_abduct () Bool (= z (bvsub #b0001 (bvadd x y))))
;(define-fun __internal_abduct () Bool (= z (bvsdiv (bvadd x y) z)))
;(define-fun __internal_abduct () Bool (bvult z (bvlshr (bvshl x y) x)))
;(define-fun __internal_abduct () Bool (bvult z (bvlshr (bvshl y x) y)))
;(define-fun __internal_abduct () Bool (= z (bvsub (bvashr y y) x)))
;(define-fun __internal_abduct () Bool (= x (bvneg (bvor z y))))

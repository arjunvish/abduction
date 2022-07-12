; Automatically created by SBV on 2022-07-09 22:53:07.837583438 PDT
(set-option :smtlib2_compliant true)
(set-option :diagnostic-output-channel "stdout")
(set-option :produce-models true)
(set-logic QF_BV)
; --- uninterpreted sorts ---
; --- tuples ---
; --- sums ---
; --- literal constants ---
(define-fun s4 () (_ BitVec 8) #x02)
; --- skolem constants ---
(declare-fun s0 () (_ BitVec 8)) ; tracks user variable "x0_x"
(declare-fun s1 () (_ BitVec 8)) ; tracks user variable "x1_y"
; --- constant tables ---
; --- skolemized tables ---
; --- arrays ---
; --- uninterpreted constants ---
; --- user given axioms ---
; --- preQuantifier assignments ---
(define-fun s2 () (_ BitVec 8) (bvadd s0 s1)) ;(x + y)
(define-fun s3 () (_ BitVec 8) (bvadd s2 s2)) ;(x + y) + (x + y)
(define-fun s5 () (_ BitVec 8) (bvmul s2 s4)) ;(x + y) * 2
(define-fun s6 () Bool (= s3 s5))             ;(x + y) + (x + y) = (x + y) * 2
(define-fun s7 () Bool (not s6))              ;(x + y) + (x + y) = (x + y) * 2
; --- arrayDelayeds ---
; --- arraySetups ---
; --- formula ---
; --- postQuantifier assignments ---
; --- delayedEqualities ---
; -- finalAssert ---
(assert s7)
(check-sat)

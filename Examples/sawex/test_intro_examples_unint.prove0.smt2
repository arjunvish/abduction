; Automatically created by SBV on 2022-07-09 22:48:00.199073503 PDT
(set-option :smtlib2_compliant true)
(set-option :diagnostic-output-channel "stdout")
(set-option :produce-models true)
(set-logic QF_UFBV)
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
(declare-fun |g#826| ((_ BitVec 8) (_ BitVec 8)) (_ BitVec 8))
; --- user given axioms ---
; --- preQuantifier assignments ---
(define-fun s2 () (_ BitVec 8) (|g#826| s0 s1)) ;(g x y)
(define-fun s3 () (_ BitVec 8) (bvadd s2 s2))   ;(g x y) + (g x y)
(define-fun s5 () (_ BitVec 8) (bvmul s2 s4))   ;(g x y) * 2
(define-fun s6 () Bool (= s3 s5))               ;(g x y) + (g x y) = (g x y) * 2
(define-fun s7 () Bool (not s6))                ;(g x y) + (g x y) != (g x y) * 2
; --- arrayDelayeds ---
; --- arraySetups ---
; --- formula ---
; --- postQuantifier assignments ---
; --- delayedEqualities ---
; -- finalAssert ---
(assert s7)
(check-sat)

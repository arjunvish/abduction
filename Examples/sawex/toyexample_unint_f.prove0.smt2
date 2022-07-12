; Automatically created by SBV on 2022-07-11 18:45:37.787021763 PDT
(set-option :smtlib2_compliant true)
(set-option :diagnostic-output-channel "stdout")
(set-option :produce-models true)
(set-logic QF_UFBV)
; --- uninterpreted sorts ---
; --- tuples ---
; --- sums ---
; --- literal constants ---
(define-fun s3 () (_ BitVec 32) #x00000001)
; --- skolem constants ---
(declare-fun s0 () (_ BitVec 32)) ; tracks user variable "x0_a"
(declare-fun s1 () (_ BitVec 32)) ; tracks user variable "x1_b"
(declare-fun s2 () (_ BitVec 32)) ; tracks user variable "x2_c"
; --- constant tables ---
; --- skolemized tables ---
; --- arrays ---
; --- uninterpreted constants ---
(declare-fun |f#826| ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
; --- user given axioms ---
; --- preQuantifier assignments ---
(define-fun s4 () (_ BitVec 32) (bvadd s1 s3))
(define-fun s5 () Bool (= s0 s4))
(define-fun s6 () (_ BitVec 32) (|f#826| s1 s2))
(define-fun s7 () (_ BitVec 32) (bvsub s0 s3))
(define-fun s8 () (_ BitVec 32) (|f#826| s2 s7))
(define-fun s9 () Bool (= s6 s8))
(define-fun s10 () Bool (not s5))
(define-fun s11 () Bool (or s9 s10))
(define-fun s12 () Bool (not s11))
; --- arrayDelayeds ---
; --- arraySetups ---
; --- formula ---
; --- postQuantifier assignments ---
; --- delayedEqualities ---
; -- finalAssert ---
(assert s12)
(check-sat)

;Example to demonstrate use of abduction in SAW, part 2
; Automatically created by SBV on 2022-07-10 20:55:49.641290054 PDT
(set-option :produce-abducts true)
(set-option :incremental true)
(set-option :smtlib2_compliant true)
(set-option :diagnostic-output-channel "stdout")
(set-option :produce-models true)
(set-logic QF_UFBV)
; --- literal constants ---
(define-fun s3 () (_ BitVec 32) #x00000001)
; --- skolem constants ---
(declare-fun s0 () (_ BitVec 32)) ; tracks user variable "x0_a"
(declare-fun s1 () (_ BitVec 32)) ; tracks user variable "x1_b"
(declare-fun s2 () (_ BitVec 32)) ; tracks user variable "x2_c"
; --- uninterpreted constants ---
(declare-fun |f#826| ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
; --- preQuantifier assignments ---
(define-fun s4 () (_ BitVec 32) (bvadd s1 s3))      ;b + 1
(define-fun s5 () Bool (= s0 s4))                   ;a = b + 1
(define-fun s6 () (_ BitVec 32) (|f#826| s1 s2))    ;f b c
(define-fun s7 () (_ BitVec 32) (bvsub s0 s3))      ;a - 1
(define-fun s8 () (_ BitVec 32) (|f#826| s2 s7))    ;f c (a - 1)
(define-fun s9 () Bool (= s6 s8))                   ;(f b c) = f c (a - 1)
(define-fun s10 () Bool (not s5))                   ;~(a = b + 1)
(define-fun s11 () Bool (or s9 s10))                ;(f b c = f c (a - 1)) v ~(a = b + 1)
(define-fun s12 () Bool (not s11))
; -- finalAssert ---
;(assert s12)
;(check-sat)
;now we ask the SMT solver what abducts we need to prove the goal
(get-abduct abd s11
((GB Bool) (GBV32 (_ BitVec 32))) ;Grammar non-terminals
  ( ;Grammar rules    
      (GB Bool (
                ;(bvult GBV32 GBV32) (bvugt GBV32 GBV32)                 					            ;unsigned comp
                ;(bvslt GBV32 GBV32) (bvsgt GBV32 GBV32)							                        ;signed comp
                (= GBV32 GBV32) (not GB) (and GB GB) (or GB GB)  						                  ;both
               ))
      (GBV32 (_ BitVec 32) (
                s0 s1 s2 										                                                  ;variables
      			#x00000001 #x00000000 #xFFFFFFFF							                                    ;constants
                (|f#826| GBV32 GBV32)
                ;(bvnot GBV32) (bvand GBV32 GBV32) (bvor GBV32 GBV32) (bvxor GBV32 GBV32)     ;logical
                ;(bvneg GBV32) (bvadd GBV32 GBV32) (bvsub GBV32 GBV32)                        ;linear arithmetic
                ;(bvmul GBV32 GBV32)                                                          ;mult   
                ;(bvudiv GBV32 GBV32) (bvurem GBV32 GBV32)                                 	  ;unsigned div/rem
                ;(bvsdiv GBV32 GBV32) (bvsrem GBV32 GBV32)                                 	  ;signed div/rem
                ;(bvshl GBV32 GBV32) (bvlshr GBV32 GBV32)                                  	  ;shifts
                ;(bvashr GBV32 GBV32)                                                    	    ;signed shift
                ;(ite GB GBV32 GBV32)                                                         ;ite
            ))
  )
)
(get-abduct-next)
(get-abduct-next)
(get-abduct-next)
(get-abduct-next)
;abducts help the user realize, some axioms about f that can be used without fully unfolding f's definitions
;for instance, commutativity.
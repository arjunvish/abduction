; Automatically created by SBV on 2022-07-10 19:26:57.640237516 PDT
(set-option :produce-abducts true)
(set-option :incremental true)
(set-option :smtlib2_compliant true)
(set-option :diagnostic-output-channel "stdout")
(set-option :produce-models true)
(set-logic QF_UFBV)
; --- uninterpreted sorts ---
; --- tuples ---
; --- sums ---
; --- literal constants ---
(define-fun s4 () (_ BitVec 32) #x00000001)
; --- skolem constants ---
(declare-fun s0 () (_ BitVec 32)) ; tracks user variable "x0_x"
(declare-fun s1 () (_ BitVec 32)) ; tracks user variable "x1_y"
(declare-fun s2 () (_ BitVec 32)) ; tracks user variable "x2_z"
; --- constant tables ---
; --- skolemized tables ---
; --- arrays ---
; --- uninterpreted constants ---
(declare-fun |f#826| ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
; --- user given axioms ---
; --- preQuantifier assignments ---
(define-fun s3 () (_ BitVec 32) (|f#826| s1 s2))
(define-fun s5 () (_ BitVec 32) (bvsub s0 s4))
(define-fun s6 () (_ BitVec 32) (|f#826| s2 s5))
(define-fun s7 () Bool (= s3 s6))
(define-fun s8 () Bool (not s7))
; --- arrayDelayeds ---
; --- arraySetups ---
; --- formula ---
; --- postQuantifier assignments ---
; --- delayedEqualities ---
; -- finalAssert ---
(assert (= s0 (bvadd s1 s4)))
;(assert s8)
;(check-sat)
(get-abduct abd s7
((GB Bool) (GBV32 (_ BitVec 32))) ;Grammar non-terminals
  ( ;Grammar rules    
      (GB Bool (
                ;(bvult GBV32 GBV32) (bvugt GBV32 GBV32)                 					          ;unsigned comp
                ;(bvslt GBV32 GBV32) (bvsgt GBV32 GBV32)							                        ;signed comp
                (= GBV32 GBV32) (not GB) (and GB GB) (or GB GB)  						                ;both
               ))
      (GBV32 (_ BitVec 32) (
                s0 s1 s2 										                                                      ;variables
      			#x00000001 #x00000000 #xFFFFFFFF							                              ;constants
                (|f#826| GBV32 GBV32)
                ;(bvnot GBV32) (bvand GBV32 GBV32) (bvor GBV32 GBV32) (bvxor GBV32 GBV32)    ;logical
                ;(bvneg GBV32) (bvadd GBV32 GBV32) (bvsub GBV32 GBV32)                       ;linear arithmetic
                ;(bvmul GBV32 GBV32)                                                         ;mult   
                ;(bvudiv GBV32 GBV32) (bvurem GBV32 GBV32)                                 	;unsigned div/rem
                ;(bvsdiv GBV32 GBV32) (bvsrem GBV32 GBV32)                                 	;signed div/rem
                ;(bvshl GBV32 GBV32) (bvlshr GBV32 GBV32)                                  	;shifts
                ;(bvashr GBV32 GBV32)                                                    	  ;signed shift
                ;(ite GB GBV32 GBV32)                                                        ;ite
            ))
  )
)
(get-abduct-next)
(get-abduct-next)
(get-abduct-next)
(get-abduct-next)
(set-option :produce-abducts true)
(set-option :incremental true)
(set-logic QF_BV)
(declare-fun x () (_ BitVec 32))   ;variable x

;Give me 5 abducts with the give grammar, the disjunction of which would entail the assertion
(get-abduct abd (bvugt (bvadd x #x00000001) x)
((GB Bool) (GBV32 (_ BitVec 32))) ;Grammar non-terminals
  ( ;Grammar rules    
      (GB Bool ((= GBV32 GBV32) (not GB) (and GB GB) (or GB GB)                         ;both
                (bvult GBV32 GBV32) (bvugt GBV32 GBV32)                                 ;unsigned 
                (bvslt GBV32 GBV32) (bvsgt GBV32 GBV32)                                 ;signed
               ))
      (GBV32 (_ BitVec 32) (
            x                                                                           ;variables
      		  #x00000001 #x00000000 #xFFFFFFFF                                            ;constants
            (bvnot GBV32) (bvand GBV32 GBV32) (bvor GBV32 GBV32) (bvxor GBV32 GBV32)    ;logical
            (bvneg GBV32) (bvadd GBV32 GBV32) (bvsub GBV32 GBV32) (bvmul GBV32 GBV32)   ;arithmetic
            (bvudiv GBV32 GBV32) (bvurem GBV32 GBV32)                                   ;div/rem
            (bvsdiv GBV32 GBV32) (bvsrem GBV32 GBV32)                                   ;signed div/rem
            (bvshl GBV32 GBV32) (bvlshr GBV32 GBV32)                                    ;shifts
            (bvashr GBV32 GBV32)                                                        ;signed shifts
            (ite GB GBV32 GBV32)))                                                      ;ite
  )
)
(get-abduct-next)
(get-abduct-next)
(get-abduct-next)
(get-abduct-next)
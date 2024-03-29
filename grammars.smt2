;64 bit BVs
(get-abduct abd `goal`
((GB Bool) (GBV64 (_ BitVec 64))) ;Grammar non-terminals
  ( ;Grammar rules    
      (GB Bool (
                (bvult GBV64 GBV64) (bvugt GBV64 GBV64)                 					          ;unsigned comp
                (bvslt GBV64 GBV64) (bvsgt GBV64 GBV64)							                        ;signed comp
                (= GBV64 GBV64) (not GB) (and GB GB) (or GB GB)  						                ;both
               ))
      (GBV64 (_ BitVec 64) (
                x 										                                                      ;variables
      			    #x0000000000000001 #x0000000000000000 #xFFFFFFFFFFFFFFFF                    ;constants
                (bvnot GBV64) (bvand GBV64 GBV64) (bvor GBV64 GBV64) (bvxor GBV64 GBV64)    ;logical
                (bvneg GBV64) (bvadd GBV64 GBV64) (bvsub GBV64 GBV64)                       ;linear arithmetic
                (bvmul GBV64 GBV64)                                                         ;mult   
                (bvudiv GBV64 GBV64) (bvurem GBV64 GBV64)                                 	;unsigned div/rem
                (bvsdiv GBV64 GBV64) (bvsrem GBV64 GBV64)                                 	;signed div/rem
                (bvshl GBV64 GBV64) (bvlshr GBV64 GBV64)                                  	;shifts
                (bvashr GBV64 GBV64)                                                    	  ;signed shift
                (ite GB GBV64 GBV64)                                                        ;ite
            ))
  )
)

;32 bit BVs
(get-abduct abd `goal`
((GB Bool) (GBV32 (_ BitVec 32))) ;Grammar non-terminals
  ( ;Grammar rules    
      (GB Bool (
                (bvult GBV32 GBV32) (bvugt GBV32 GBV32)                 					          ;unsigned comp
                (bvslt GBV32 GBV32) (bvsgt GBV32 GBV32)							                        ;signed comp
                (= GBV32 GBV32) (not GB) (and GB GB) (or GB GB)  						                ;both
               ))
      (GBV32 (_ BitVec 32) (
                x 										                                                      ;variables
      			    #x00000001 #x00000000 #xFFFFFFFF							                              ;constants
                (bvnot GBV32) (bvand GBV32 GBV32) (bvor GBV32 GBV32) (bvxor GBV32 GBV32)    ;logical
                (bvneg GBV32) (bvadd GBV32 GBV32) (bvsub GBV32 GBV32)                       ;linear arithmetic
                (bvmul GBV32 GBV32)                                                         ;mult   
                (bvudiv GBV32 GBV32) (bvurem GBV32 GBV32)                                 	;unsigned div/rem
                (bvsdiv GBV32 GBV32) (bvsrem GBV32 GBV32)                                 	;signed div/rem
                (bvshl GBV32 GBV32) (bvlshr GBV32 GBV32)                                  	;shifts
                (bvashr GBV32 GBV32)                                                    	  ;signed shift
                (ite GB GBV32 GBV32)                                                        ;ite
            ))
  )
)

;16 bit BVs
(get-abduct abd `goal`
((GB Bool) (GBV16 (_ BitVec 16))) ;Grammar non-terminals
  ( ;Grammar rules    
      (GB Bool (
                (bvult GBV16 GBV16) (bvugt GBV16 GBV16)                 					          ;unsigned comp
                (bvslt GBV16 GBV16) (bvsgt GBV16 GBV16)							                        ;signed comp
                (= GBV16 GBV16) (not GB) (and GB GB) (or GB GB)  						                ;both
               ))
      (GBV16 (_ BitVec 16) (
                x 										                                                      ;variables
      			    #x0001 #x0000 #xFFFF							                                          ;constants
                (bvnot GBV16) (bvand GBV16 GBV16) (bvor GBV16 GBV16) (bvxor GBV16 GBV16)    ;logical
                (bvneg GBV16) (bvadd GBV16 GBV16) (bvsub GBV16 GBV16)                       ;linear arithmetic
                (bvmul GBV16 GBV16)                                                         ;mult   
                (bvudiv GBV16 GBV16) (bvurem GBV16 GBV16)                                 	;unsigned div/rem
                (bvsdiv GBV16 GBV16) (bvsrem GBV16 GBV16)                                 	;signed div/rem
                (bvshl GBV16 GBV16) (bvlshr GBV16 GBV16)                                  	;shifts
                (bvashr GBV16 GBV16)                                                    	  ;signed shift
                (ite GB GBV16 GBV16)                                                        ;ite
            ))
  )
)

;8 bit BVs
(get-abduct abd `goal`
((GB Bool) (GBV8 (_ BitVec 8))) ;Grammar non-terminals
  ( ;Grammar rules    
      (GB Bool (
                (bvult GBV8 GBV8) (bvugt GBV8 GBV8)                 					              ;unsigned comp
                (bvslt GBV8 GBV8) (bvsgt GBV8 GBV8)							                            ;signed comp
                (= GBV8 GBV8) (not GB) (and GB GB) (or GB GB)  						                  ;both
               ))
      (GBV8 (_ BitVec 8) (
                x 										                                                      ;variables
      			    #x01 #x00 #xFF							                                                ;constants
                (bvnot GBV8) (bvand GBV8 GBV8) (bvor GBV8 GBV8) (bvxor GBV8 GBV8)           ;logical
                (bvneg GBV8) (bvadd GBV8 GBV8) (bvsub GBV8 GBV8)                            ;linear arithmetic
                (bvmul GBV8 GBV8)                                                           ;mult   
                (bvudiv GBV8 GBV8) (bvurem GBV8 GBV8)                                 	    ;unsigned div/rem
                (bvsdiv GBV8 GBV8) (bvsrem GBV8 GBV8)                                 	    ;signed div/rem
                (bvshl GBV8 GBV8) (bvlshr GBV8 GBV8)                                  	    ;shifts
                (bvashr GBV8 GBV8)                                                    	    ;signed shift
                (ite GB GBV8 GBV8)                                                          ;ite
            ))
  )
)
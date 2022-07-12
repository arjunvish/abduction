;Motivating example from integration with SMTCoq, part 1
(set-logic UFLIA)
(declare-fun f (Int Int) Int)​
(declare-fun z () Int)​
(declare-fun y () Int)​
(declare-fun x () Int)​
(assert (not (=> (= x (+ y 1)) (= (f y z) (f (- x 1) z)))))​
(check-sat)​
;sat
;need more info about f from Coq
(exit)​

;can i ask for abducts when my query is unsat already?
(set-logic QF_LIA)

(get-abduct A (and true (not true)))
(get-abduct-next)
;this fails, query has to be sat
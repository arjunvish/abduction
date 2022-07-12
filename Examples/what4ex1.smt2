;what4's quickstart example
(set-logic ALL)
(set-option :produce-models true)
(set-option :produce-abducts true)
; :1:0
(declare-fun p () Bool)
(declare-fun q () Bool)
(define-fun x!0 () Bool (and (not p) q)) ; !p & q
(declare-fun r () Bool)
(define-fun x!1 () Bool (and (not q) (not r))) ; !q & !r
(define-fun x!2 () Bool (and p r))  ; p & r
(define-fun x!3 () Bool (and p q (not r))) ; p & q & !r
(define-fun x!4 () Bool (and (not p) (not q) r)) ; !p & !q & r
(define-fun x!5 () Bool (and (not x!0) (not x!1) (not x!2) (not x!3) (not x!4))) ; !(!p & q) & !(!q & !r) & !(p & r) & !(p & q & !r) & !(!p & !q & r)
(get-abduct abd x!5)
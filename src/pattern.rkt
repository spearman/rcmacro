(module pattern racket
  (require (prefix-in macro: "./macro.rkt"))
  (require (prefix-in token: "./token.rkt"))
  (provide
    match%
    equal-bindings
    match
    match-bindings
    match-macro
    match-length
    match-macro-case)

  (define (match%) (println "FIXME: implement match%"))
  (define (equal-bindings) (println "FIXME: implement equal-bindings"))
  (define (match) (println "FIXME: implement match"))
  (define (match-bindings) (println "FIXME: implement match-bindings"))
  (define (match-macro) (println "FIXME: implement match-macro"))
  (define (match-length) (println "FIXME: implement match-length"))
  (define (match-macro-case) (println "FIXME: implement match-macro-case"))
)

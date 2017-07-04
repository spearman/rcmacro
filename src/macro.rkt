(module macro racket
  ; (require "./trivial-types.rkt") ; FIXME imports proper-list
  (provide
    macro%
    macro-case%
    case-match
    case-template
    case-toplevel-template
    macro-cases
    macro-name
  )

  (define (macro%) (println "FIXME: implement macro%"))
  (define (macro-case%) (println "FIXME: implement macro-case%"))
  (define (case-match) (println "FIXME: implement case-match"))
  (define (case-template) (println "FIXME: implement case-template"))
  (define (case-toplevel-template)
    (println "FIXME: implement case-toplevel-template"))
  (define (macro-cases) (println "FIXME: implement macro-cases"))
  (define (macro-name) (println "FIXME: implement macro-name"))
)

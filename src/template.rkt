(module template racket
  (require (prefix-in db "./db.rkt"))
  (require (prefix-in printer: "./printer.rkt"))
  (require (prefix-in token: "./token.rkt"))
  (provide render-template)

  (define (render-template) (println "FIXME: implement render-template"))
)

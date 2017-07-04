(module macroexpand racket
  (require (prefix-in macro: "./macro.rkt"))
  (require (prefix-in parser: "./parser.rkt"))
  (require (prefix-in pattern: "./pattern.rkt"))
  (require (prefix-in template: "./template.rkt"))
  (require (prefix-in token: "./token.rkt"))

  (provide macroexpand-pathname macroexpand-string)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; public
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;
  ;;  macroexpand-pathname
  ;;
  (define (macroexpand-pathname pathname)
    (macroexpand-result
      (parser:extract-macros (parser:parse-pathname pathname))))

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; private
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;
  ;;  macroexpand-result
  ;;
  (define (macroexpand-result result)
    (begin
      (println "FIXME: implement macroexpand-result")
      (new token:text-token% [line 999])
    )
  )

  ;;
  ;;  macroexpand-string
  ;;
  (define (macroexpand-string) (println "FIXME: implement macroexpand-string"))
)

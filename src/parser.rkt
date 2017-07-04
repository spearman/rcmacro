(module parser racket
  ;; FIXME esrap dependency
  (require (prefix-in macro: "./macro.rkt"))
  (require (prefix-in token: "./token.rkt"))
  (provide
    result%
    extract-macros
    parse-pathname
    parse-string
    result-ast
    result-macros
  )

  ;;
  ;; public
  ;;
  (define (result%) (println "FIXME: implement result%"))
  (define (extract-macros ast) (println "FIXME: implement extract-macros"))
  (define (parse-pathname pathname) (parse-string (file->string pathname)))
  (define (parse-string string) (println "FIXME: implement parse-string"))
  (define (result-ast) (println "FIXME: implement result-ast"))
  (define (result-macros) (println "FIXME: implement result-macros"))

  ;;
  ;; public
  ;;
)

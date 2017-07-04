(module error racket
  (provide
    bad-match
    bad-import
    ;no-input-files ; this exception is implicit in the command-line defs
    parser-error
    unknown-template-command
    unknown-var
  )

  (define (bad-match) (println "FIXME: implement bad-match"))
  (define (bad-import) (println "FIXME: implement bad-import"))
  (define (parser-error) (println "FIXME: implement parser-error"))
  (define unknown-template-command
    (println "FIXME: implement unknown-template-command"))
  (define (unknown-var) (println "FIXME: implement unknown-var"))
)

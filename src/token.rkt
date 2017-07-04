(module token racket
  ; (require "trivial-types") ; FIXME cl import proper-list
  ; (require "split-sequence") ; FIXME cl import split-sequence
  (provide
    character%
    identifier%
    integer%
    number%
    operator%
    preproc%
    real%
    string%
    text-token%
    token%
    variable%
    void-token%
    make-variable
    token-equal
    token-line
    token-position
    token-text
    var-array-p
    var-block-p
    var-command-p
    var-group-p
    var-has-qualifier
    var-list-p
    var-name
    var-rest-p
    var-qualifiers
  )

  (define token% (class object%
    (super-new)
    (init line)
    (define m-line line)
    (define/public (token-line) m-line)
    (define/public (print-token) "FIXME: define print token")))

  (define text-token% token%)

  (define (character%) (println "FIXME: implement character%"))
  (define (identifier%) (println "FIXME: implement identifier%"))
  (define (integer%) (println "FIXME: implement integer%"))
  (define (number%) (println "FIXME: implement number%"))
  (define (operator%) (println "FIXME: implement operator%"))
  (define (preproc%) (println "FIXME: implement preproc%"))
  (define (real%) (println "FIXME: implement real%"))
  (define (string%) (println "FIXME: implement string%"))
  (define (variable%) (println "FIXME: implement variable%"))
  (define (void-token%) (println "FIXME: implement void-token%"))
  (define (make-variable) (println "FIXME: implement make-variable"))
  (define (token-equal) (println "FIXME: implement token-equal"))
  (define (token-line) (println "FIXME: implement token-line"))
  (define (token-position) (println "FIXME: implement token-position"))
  (define (token-text) (println "FIXME: implement token-text"))
  (define (var-array-p) (println "FIXME: implement var-array-p"))
  (define (var-block-p) (println "FIXME: implement var-block-p"))
  (define (var-command-p) (println "FIXME: implement var-command-p"))
  (define (var-group-p) (println "FIXME: implement var-group-p"))
  (define (var-has-qualifier) (println "FIXME: implement var-has-qualifier"))
  (define (var-list-p) (println "FIXME: implement var-list-p"))
  (define (var-name) (println "FIXME: implement var-name"))
  (define (var-rest-p) (println "FIXME: implement var-rest-p"))
  (define (var-qualifiers) (println "FIXME: implement var-qualifiers"))
)

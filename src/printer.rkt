(module printer racket
  (require (prefix-in Token: "./token.rkt"))
  (provide print-ast)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; public
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;
  ;;  print-ast
  ;;
  (define (print-ast ast) (print-expression ast))

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; private
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;
  ;;  print-expression
  ;;
  (define (print-expression ast)
    (when ast
      (if (not (pair? ast))
        (send ast print-token)
        (if (keyword? (first ast))
          (print-group (first ast) (rest ast))
          (print-list ast)))))

  ;;
  ;;
  ;;
  (define +group-separators+
    '(('#:list  . (#\( . #\)))
      ('#:array . (#\[ . #\]))
      ('#:block . (#\{ . #\})))
  )

  ;;
  ;;  print-group
  ;;
  (define (print-group group-type list)
    (letrec ([block-extra (lambda ()
        (when (eq? group-type '#:block)
          (write-char #\newline)))
      ])
      (let* (
        (separators (cdr (assoc group-type +group-separators+)))
        (open (car separators))
        (close (cdr separators))
      ) (write-char open)
        (block-extra)
        (print-list list)
        (block-extra)
        (write-char close)
        (block-extra)
      )
    )
  )

  ;;
  ;;  print-list
  ;;
  (define (print-list list) (write "FIXME: define print-list"))

  ; (define (print-token token) (write "FIXME: define print-token"))
)

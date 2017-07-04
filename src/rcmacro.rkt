#lang racket

(require (prefix-in macroexpand: "./macroexpand.rkt"))
(require (prefix-in printer: "./printer.rkt"))

;; TODO the original cmacro Common Lisp program had defined a *debugger-hook*,
;; is there anything like this for Racket?

;;
;; command-line parameters
;;
(define input-files (make-parameter #f))  ; required
(define output-file (make-parameter #f))  ; optional
(define no-expand   (make-parameter #f))  ; optional

;;
;;  main
;;
(module+ main
  ;; parse command line arguments: provides implicit -h and --help flags;
  ;; requires an <input-file> argument to be provided or else a message will
  ;; be printed and program returns with exit code '1'
  (input-files (command-line
    #:once-each
    [("-o" "--output") output "Path to the output file"
      (output-file output)]
    [("-n" "--no-expand") "Don't macroexpand, but remove macro definitions"
      (no-expand #t)]
    #:args files
    files))

  ;; process the input file and write either to stdout or given output file
  (if (output-file)

    ;; write to file
    ;; note: this writes all output (from possibly multiple input files) to a
    ;; single output file
    (begin
      (printf "input files: ~v~n" (input-files))
      (printf "writing to output file: ~v~n" (output-file))
      (with-output-to-file (output-file)
        (lambda ()
          (for ([file (input-files)])
            (process-file file)
          )
        )
        #:mode   'text
        #:exists 'replace
      )
    )

    ;; write to stdout
    (begin
      (printf "input files: ~v~n" (input-files))
      (displayln "writing to stdout")
      (for ([file (input-files)])
        (process-file file) ; FIXME
      )
    )
  ) ; end if
) ; end module main

;;
;;  process-file
;;
(define (process-file input-file)
  (printer:print-ast (macroexpand:macroexpand-pathname input-file)))

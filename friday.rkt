#lang racket/base

(require (for-syntax racket/syntax racket/base))

; Provide only one macro and one message
(provide on-friday)


; Define a macro that makes code run only on Friday
(define-syntax (on-friday stx)
  (define code (syntax->list stx))
  (if (not (eqv? 5 (date-week-day (seconds->date (current-seconds)))))
      (error 'on-friday "It's not Friday")
      (datum->syntax stx (cons 'begin (cdr code)))))


; Run a sample piece of code if ran as main
(module+ main
  (on-friday
   (define name "Steven")
   (displayln (format "Hello ~a, it's finally Friday!!" name))))
           
; end

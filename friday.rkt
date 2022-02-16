#lang racket/base

(require (for-syntax racket/syntax racket/base))

; Provide only one macro and one message
(provide on-friday)


; Define a macro that makes code run only on Friday
(define-syntax (on-friday stx)
  (syntax-case stx ()
    [(_ code ...)
     (with-syntax ([listof-code (syntax->datum #'(code ...))])
       (let ([d (date-week-day (seconds->date (current-seconds)))])
         (if (not (eqv? d 5))
             #`(error 'on-friday "It's not friday")
             #`(begin ,listof-code))))]))


; Run a sample piece of code if ran as main
(module+ main
  (on-friday
   (define name "Steven")
   (displayln (format "Hello ~a, it's finally Friday!!" name))))
           
; end

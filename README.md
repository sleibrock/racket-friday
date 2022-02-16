racket-friday
=======

Code that only runs when it is Friday. Inspired by [perl-friday](https://github.com/jwilk/perl-friday).

Example of running the `friday.rkt` file.
```
$ racket friday.rkt
on-friday: It's not friday
  context....:
  ...
```

Using `on-friday` in practice.
```racket
#lang racket

(require "friday.rkt")

(on-friday
  (define my-numbers (range 100))
  (define filtered (filter odd? my-numbers))
  (for-each (lambda (k) (displayln "~a x ~a = ~a" k k (* k k)))
            filtered))

...
on-friday: it's not friday  ; if it isn't friday
1 x 1 = 1
2 x 2 = 4
3 x 3 = 9
...       ; if it is friday
```

There are too many ways of writing syntactically incorrect code, so I opted to write code that only *runs* when it is Friday. This is a language macro that re-writes your code to run the code when it is Friday, or it produces an error when it is not.

A complete joke... unless you want to implement it in your code. I am not at fault. MIT License for all. Semi-inspired by the legendary `only-once` macro.

racket-friday
=======

Code that only runs when it is Friday. Inspired by [perl-friday](https://github.com/jwilk/perl-friday).

```
$ racket friday.rkt
on-friday: It's not friday
  context....:
  ...
```

There are too many ways of writing syntactically incorrect, so I opted to write code that only *runs* when it is Friday. This is a language macro that re-writes your code to run the code when it is Friday, or it produces an error when it is not.

A complete joke... unless you want to implement it in your code. I am not at fault. MIT License for all. Semi-inspired by the legendary `only-once` macro.

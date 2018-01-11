#lang racket

(provide (all-defined-out))

;Sum Coins

(define (sum-coins p n d q)
  (+ (* 1 d)(+ (* 5 n)(+ (* 10 p)(* 25 q)))))

;Degrees to Radians

(define (degrees-to-radians angle)
  (* pi (/ angle 180)))

;sign
(define (sign x)
  (cond
    ((= 0 x) x)
    ((positive? x) 1)
    (else -1)
   )   ; end condition
 )

;new-sin
(define (new-sin angle type)
  (cond
    ((symbol=? type 'degrees)
     (sin (degrees-to-radians angle)))
    ((symbol=? type 'radians)
     (sin angle))
    (else "not a valid type")
  ) ; end condition
)

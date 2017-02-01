;;=====================================;;
;;  Exercises for Chapter 1.1 of SICP  ;;
;;=====================================;;


;; 1.1
;;-----------------------------------
10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
    b
    a)
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
(+ 2 (if (> b a) b a))
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))



;; 1.2
;;-----------------------------------
(/ (+ (- 2 (- 3 (+ 6 (/ 4 5))))
      5
      4)
   (* (- 6 2)
      (- 2 7)
      3))



;; 1.3
;;-----------------------------------
(define (sum-two-of-three a b c)
  (if (and (< a b) (< a c))
      (+ (* b b) (* c c))
      (if (and (< b a) (< b c))
          (+ (* a a) (* c c))
          (+ (* a a) (* b b)))))

(sum-two-of-three 2 3 4)
(sum-two-of-three 3 4 2)
(sum-two-of-three 4 2 3)
(sum-two-of-three 4 5 1)



;; 1.4
;;-----------------------------------
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; all should equal 6
(a-plus-abs-b 2 4)
(a-plus-abs-b 2 (- 4))
(a-plus-abs-b 2 -4)



;; 1.5
;;-----------------------------------
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;; this never evaluates because (p) infinitely evals to itself
;; in applicative order interpreters. in normal order, test runs
;; with 0 first, which passes the if and evals, no need for (p)
;; (test 0 (p))



;; 1.6
;;-----------------------------------
;; http://community.schemewiki.org/?sicp-ex-1.6



;; 1.7
;;-----------------------------------
(define (square x)
  (* x x))

(define (good-enough? guess guess2)
  (< (abs (- guess guess2))
     (* guess 0.001)))

(define (average x y)
  (/ (+ x y) 2.0))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (define guess2 (improve guess x))
  (if (good-enough? guess guess2)
      guess
      (sqrt-iter guess2 x)))

(define (new-sqrt x)
  (sqrt-iter 1.0 x))

(new-sqrt 9)
(square (new-sqrt 99999999999999999)) ;; kills interpreter
(square (new-sqrt 9))
(square (new-sqrt 0.0001)) ;; already below tolerance check



;; 1.8
;;-----------------------------------
;; don't feel like it



;; 1.9
;;-----------------------------------

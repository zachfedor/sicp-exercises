;;=====================================;;
;;  Exercises for Chapter 1.2 of SICP  ;;
;;=====================================;;


;; 1.9
;;-------------------------------------;;
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))
;; (+ 4 5)
;; (inc (+ (dec 4) 5))
;; (inc (inc (+ (dec 3) 5)))
;; (inc (inc (inc (+ (dec 2) 5))))
;; (inc (inc (inc (inc (+ (dec 1) 5)))))
;; (inc (inc (inc (inc (+ 0 5)))))
;; (inc (inc (inc (inc 5))))
;; (inc (inc (inc 6)))
;; (inc (inc 7))
;; (inc 8)
;; 9
;; recursive

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))
;; (+ 4 5)
;; (+ (dec 4) (inc 5))
;; (+ (dec 3) (inc 6))
;; (+ (dec 2) (inc 7))
;; (+ (dec 1) (inc 8))
;; (inc 8)
;; 9
;; iterative


;; 1.10
;;-------------------------------------;;

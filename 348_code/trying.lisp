(defun power(base n)
  ( if (= n 0) 1 ( * base (power base (- n 1)) ) ))

(defun factorial(n)
  (if ( < n 2) 1 (* n ( factorial (- n 1)))))

(defun base-e(base n)
  (cond
    ( (= n 0) 1)
    ( t( +( / (power base n) (factorial n )) (base-e base (- n 1)) ))
    )
)




(defun base-ln(x n)
  (cond 
   ( (and (> x -1) (<= x 1))
  )



   
(defun computre-trig(x s n)
  (cond 
    (( and (typep x 'integer) (typep n 'integer) (= s 1)) base-e(x n))
    (( and (typep x 'integer) (typep n 'integer) (= s 2)) base-ln(x n))
    ( t (print "Please enter valid integers for x n s"))))

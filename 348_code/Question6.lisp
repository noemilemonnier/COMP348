(defun compute-trig(x s n)
(cond (
       ((or (typep s 'single-float) (typep s 'string) (typep n 'single-float) (typep n 'string)) (print "ERROR! ENTER AN INTEGER!"))
       ((= s 1) exponential(x 5))
	((= s 2) fct-ln(x 5)))))

(defun exponential(x n)
  (cond( 
	 ((= n 0) 1)
    	((= n 1) x)
	( t (exponential-helper(x n)))
)))

(defun exponential-helper(x n)
(do ((j 2 (+ j 1))) ((> j x))
  (/ (* x x) (* (- j 1) (j)))))

(defun fct-ln(x 5)
  )

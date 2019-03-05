(defun mytable (element)
 (cond 
  ( (typep element 'integer)
	 (do ((j 0 (+ j 1)))
    		 ((> j 10) '100%) 
    			 (progn
      			 (format t "~2d " element)
			(format t "~2d " j)
			(format t "~2d~%" (* element j)))))
  ( (typep element 'single-float) (print '("Decimal values not allowed, please enter an integer.")))
( (typep element 'symbol) (print '("String values not allowed, please enter an integer.")))	
  (T (format t "~% Enter a valid value. ~d " a))))
      

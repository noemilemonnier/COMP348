(defun tetranacci (element)
  (if 
    (typep element 'integer)
    (cond 	((< element 4) 0)
    		((= element 4) 1)
  		( (> element 4) (+ (tetranacci (- element 1)) (tetranacci (- element 2)) (tetranacci (- element 3)) (tetranacci(- element 4) ))))))

(defun tetranacci-iterative (element)
(cond ((< element 4) 0)
      ((= element 4) 1)
      (t (iterative-helper element 0 0 0 1))))

(defun iterative-helper (element nb1 nb2 nb3 nb4)
(do ((j 5 (+ j 1))) ((> j element))
		 (progn
		       (setf total (+ nb1 nb2 nb3 nb4)) 
		       (setf nb1 nb2)
		       (setf nb2 nb3)
		       (setf nb3 nb4)
		       (setf nb4 total)))
total)

(defun test-recursive-version(element)
  (do ((j element (+ j 10))) (( > j 101))
	(print(tetranacci j))))

(defun test-iterative-version(element)
  (do ((j element (+ j 10))) ((> j 101))
    (print (tetranacci-iterative j))))



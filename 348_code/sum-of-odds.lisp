(defun sum-of-odds(lst)
(cond
( (null lst) 0 )
((listp (car lst))(+(sum-of-odds(car lst))(sum-of-odds(cdr lst))))
((and (typep (car lst) 'integer)(oddp(car lst))) 
			    (+(car lst)(sum-of-odds (cdr lst))))
(T (sum-of-odds(cdr lst)))
))

(defun tree-comparator(lst1 lst2)
  (cond( (and (null lst1) (null lst2) ) t)
	((and (null lst1) (not(null lst2))) nil)
	((and (null lst2) (not(null lst1)))  nil )

	((and (listp (car lst1)) (not(listp (car lst2)))) nil)
	(( and (listp (car lst2)) (not( listp (car lst1))) nil))
	((and (listp (car lst1)) (listp(car lst2)))
	( tree-comparator (car lst1) (car lst2)))
  (T ( tree-comparator (cdr lst1) (cdr lst2)))
))





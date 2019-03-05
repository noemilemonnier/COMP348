
;; ADD NUMBER TO A TREE 
(defun add (number tree)
	(if (null tree) ; if tree is null
		(list number) ; create a list with the number
		(cond ((< number (car tree)) ; else if number < root of tree
					(list (car tree) ; list the root of tree + 
						(add number (car (cdr tree))) ; left subtree with new number +
						(car (cdr (cdr tree)))))      ; right subtree
			  ((> number (car tree)) ; else if number > root of tree
					(list (car tree)   ; list the root of tree + 
						(car (cdr tree)) ; left subtree +
						(add number (car (cdr (cdr tree)))))) ; right subtree with new number
			  (t tree)))) ; else if the number is already in the tree, return the tree as it is


;; REVERSE A LIST THAT CONTAINS NO LIST
(defun rev-lst (lst)
	(cond ((null lst) '()) ; if null list return null list
		   (t (append (rev-lst (cdr lst)) (lst (car lst)))))) ; else append the reverse of tail + head


;; REVERSE A LIST AND THE LISTS INSIDE THE LIST
(defun rev-all-lists (lst)
	(cond ((null lst) '()) ; if null list, return null list
		  ((listp (car lst)) ; else if head is a list
			   (append (rev-all-lists (cdr lst)) (list (rev-all-lists (car lst)))) ; append reverse of tail + reverse of the list at head
		   (t  (append (rev-all-lists (cdr lst)) (list (car lst))))))) ; else append reverse of tail + head


;; RETURN LAST ELEMENT OF A LIST
(defun last1 (lst)
	(cond ((equal nil lst) nil) ; if null list, return null list
		  ((equal (cdr lst) nil) (car lst)) ; else if list has one element, it is the last element
		  (t (last1 (cdr lst))))) ; else the last element of the list is the last element of the tail of the list


;; REMOVE LAST ELEMENT FROM LIST
(defun removelast (lst)
	(cond ((equal nil lst) nil) ; if null list, return null list
		  ((equal (cdr lst) nil) nil) ; else if list has one element, return null list
		   (t (cons (car lst) (removelast (cdr lst))))) ; else remove the last element from the tail and add the head back


;; REMOVE DUPLICATE FROM LIST
(defun double-atom (lst)
	(cond 
		((null lst) nil) ; if null list return null list
		((listp (car lst)) ; else if the head is a list
			(cons (double-atom (car lst)) ; remove the duplicates from the head and from the tail, concatenate the result
				(double-atom (cdr lst))))
		(t (append (list (car lst)) ; else append the head of the list + tail without duplicate
			(double-atom (cdr lst))))))


;; APPEND TWO LISTS
(defun append1 (lst1 lst2)
	(if (null lst1) ; if null list
		lst 2) ; return list 2
		(cons (car lst1) (append1 (cdr lst1) lst2))) ; else add head of list1 to concatenation of tail1 + list2


;; INTERLEAVE TWO LISTS
(defun interleave2 (lst1 lst2)
	(cond 
	  	((null lst1 ) lst2) ; if lst1 is null return lst2
		((null lst2 ) lst1) ; else if lst2 is null return lst1
		((< (car lst1 ) (car lst2)) ; else if head1 < head2
			(cons (car lst1) (interleave2 (cdr lst1) lst2))) ; keep head1 as head and interleave rest of lst1 with lst2
		(t (cons (car lst2) (interleave2 lst1 (cdr lst2)))))) ; else do the opposite

;; SUM OF ELEMENTS OF A LIST
(defun sum (lst)
	(cond ((null lst) 0) ; if null list, sum is 0
		   (t (+ (car lst) (sum (cdr lst)))))) ; else the sum is the sum of the tail + the head

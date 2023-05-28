(defun qsort (L)
(cond
((null L) nil)
(t
(append
(qsort (list< (car L) (cdr L)))
(list (car L))
(qsort (list>= (car L) (cdr L)))))))

(defun list< (a b)
(cond
((or (null a) (null b)) nil)
((< a (car b)) (list< a (cdr b)))
(t (cons (car b) (list< a (cdr b))))))

(defun list>= (a b)
(cond
((or (null a) (null b)) nil)
((>= a (car b)) (list>= a (cdr b)))
(t (cons (car b) (list>= a (cdr b))))))

(defun print-list (L)
(cond
((null L) nil)
(t
(progn
(print (car L))
(print-list (cdr L))))))

(defun qsort-with-output (L)
(let ((sorted (qsort L)))
(print-list sorted)
sorted))

(qsort-with-output '(46 2 70 1 5)) ; Werte Eingeben

; Warmup Solution file

; Simple Array Sum
(defun array-reader ()
  (let* ((len (parse-integer (read-line) :junk-allowed t))
         (elems (elems-to-list (read-line) len)))
    (reduce #'+ elems)))

(defun elems-to-list (e len)
  (with-input-from-string (u e)
    (do ((i 1 (+ 1 i))
         (lst '()))
        ((> i len) lst)
      (push (read u) lst))))

(write (array-reader))

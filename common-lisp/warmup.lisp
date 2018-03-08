;; Warmup Solution file

;; Useful functions for multiple sections

(defun elems-to-list (string-values &key len)
  "Takes a string of values and a length, returns a list."
  (with-input-from-string (num string-values)
    (do ((i 1 (+ 1 i))
         (lst '()))
        ((> i len) lst)
      (push (read num) lst))))

;; Simple Array Sum
(defun array-reader ()
  "Reads a length and a string of values. Returns their addition reduction."
  (let* ((len (parse-integer (read-line) :junk-allowed t))
         (elems (elems-to-list (read-line) :len len)))
    (reduce #'+ elems)))

(write (array-reader))


;; Compare the triplets
(defparameter *max-values* 3)

(defun triplets-reader ()
  "Reads two lines (denoted a, b) of 3 separately spaced integers. Each value denotes a score, whichever value is larger between an and bn, a point for either a or b is added. Once finished, a and b's points are returned."
  ;; Collect the values for a and b
  (let* ((a-values (elems-to-list (read-line) :len *max-values*))
         (b-values (elems-to-list (read-line) :len *max-values*))
         (scores '(0 0)))
    )

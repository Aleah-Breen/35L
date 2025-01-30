(defun gps-line ()
  "Print the current buffer line number and narrowed line number of point."
  (interactive)
  (let ((start (point-min))
        (n (line-number-at-pos))
	(total-lines (if (and (not (equal (point-max) (point-min)))
                              (not (eq (char-before (point-max)) ?\n)))
                         (1- (count-lines (point-min) (point-max)))
                       (count-lines (point-min) (point-max)))))
    (if (= start 1)
        (message "Line %d/%d" n total-lines)
      (save-excursion
        (save-restriction
          (widen)
          (message "line %d (narrowed line %d)/%d"
                   (+ n (line-number-at-pos start) -1) n (total-lines)))))))

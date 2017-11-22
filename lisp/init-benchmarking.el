(defun sanityinc/time-subtract-millis (b a)
  (* 1000.0 (float-time (time-subtract b a))))

(defun sanityinc/show-init-time ()
  (message "init completed in %.2fms"
	   (sanityinc/time-subtract-millis after-init-time before-init-time)))

(add-hook 'after-init-hook 'sanityinc/show-init-time)

(provide 'init-benchmarking)

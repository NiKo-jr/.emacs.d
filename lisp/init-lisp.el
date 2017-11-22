;; Map:
;; M-.         find-elisp-thing-at-potin
;; M-,         pop-tag-mark
;; C-c C-d d   describe-elisp-thing-at-point
;; C-c C-d C-d describe-elisp-thing-at-point
(require-package 'elisp-slime-nav)
(dolist (hook '(emacs-lisp-mode-hook ielm-mode-hook))
  (add-hook hook 'turn-on-elisp-slime-nav-mode))
(add-hook 'emacs-lisp-mode-hook (lambda () (setq mode-name "ELisp")))
(provide 'init-lisp)

(setq-default initial-scratch-message
	      (concat ";; Happy hacking, " user-login-name " - Emacs ♥ you!\n\n"))

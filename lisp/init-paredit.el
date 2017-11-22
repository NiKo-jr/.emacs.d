(require-package 'paredit)
(autoload 'enable-paredit-mode "paredit")

(add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)

(provide 'init-paredit)

(require-package 'helm-gtags)

(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(add-hook 'asm-mode-hook 'helm-gtags-mode)

(custom-set-variables
 '(helm-gtags-auto-update t))

(provide 'init-helm)

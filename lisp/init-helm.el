;;; -*- lexical-binding: t -*-
;;; Code:
(use-package helm
  :ensure t
  :bind (("M-x" . 'helm-M-x)
         ("C-x C-f" . 'helm-find-files))
  :config
  (add-hook 'after-init-hook '(lambda () (helm-mode 1)))
  )




(provide 'init-helm)
;;; init-helm.el ends here

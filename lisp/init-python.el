(setq auto-mode-alist
      (append '(("SConstruct\\'" . python-mode)
                ("SConscript\\'" . python-mode))
              auto-mode-alist))

(use-package pip-requirements
  :ensure t)

(use-package company-jedi
  :ensure t
  :init
  (add-hook 'python-mode-hook (lambda () (add-to-list 'company-backends 'company-jedi))))


(provide 'init-python)

(use-package irony
  :ensure
  t
  :config
  (progn
    ;; If irony server was never installed, install it
    (unless (irony--find-server-executable) (call-interactively #'irony-install-server))

    (add-hook 'c++-mode-hook 'irony-mode)
    (add-hook 'c-mode-hook 'irony-mode)

    ;; Use compilation database first, clang_complete as fallback
    (setq-default irony-cdb-compilation-databases '(irony-cdb-libclang
                                                    irony-cdb-clang-complete))

    (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
    ))


(use-package company-irony
  :ensure t
  :requires (company irony)
  :config
  (progn
    (eval-after-load 'company '(add-to-list 'company-backends 'company-irony))))

(use-package flycheck-irony
  :ensure t
  :requires (flycheck irony)
  :config
  (eval-after-load 'flycheck '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))
  )

(use-package irony-eldoc
  :ensure t
  :requires (eldoc irony)
  :config
  (add-hook 'irony-mode-hook #'irony-eldoc))

(provide 'init-cpp)

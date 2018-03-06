(use-package diff-hl
  :ensure t
  :config
  (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
  (add-hook 'after-init-hook 'global-diff-hl-mode)
  (define-key diff-hl-mode-map
    (kbd "<left-fringe> <mouse-l>")
    'diff-hl-diff-goto-hunk)
  )

(use-package browse-at-remote
  :ensure t)

(provide 'init-vc)

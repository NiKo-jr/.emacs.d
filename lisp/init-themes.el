(require-package 'color-theme-sanityinc-solarized)
(require-package 'color-theme-sanityinc-tomorrow)
(require-package 'kaolin-themes)

;; If you don't customize it, this is the theme you get.
(setq-default custom-enabled-themes '(kaolin-dark))

(setq kaolin-bold t
      kaolin-italic t
      kaolin-underline t
      kaolin-wave t
      kaolin-hl-line-colored t)

;; Ensure that themes will be applied even if they have not been customized
(defun reapply-themes ()
  "Forcibly load the themes listed in `custom-enabled-themes'."
  (dolist (theme custom-enabled-themes)
    (unless (custom-theme-p theme)
      (load-theme theme)))
  (custom-set-variables `(custom-enables-themes (quote ,custom-enabled-themes))))

(add-hook 'after-init-hook 'reapply-themes)

(defun light ()
  "Activate a light color theme"
  (interactive)
  (setq custom-enabled-themes '(sanityinc-tomorrow-day))
  (reapply-themes))

(defun dark ()
  "Activate a dark color theme"
  (interactive)
  (setq custom-enabled-themes '(sanityinc-tomorrow-bright))
  (reapply-themes))

(provide 'init-themes)

(require-package 'color-theme-sanityinc-solarized)
(require-package 'color-theme-sanityinc-tomorrow)
(require-package 'dracula-theme)

;; If you don't customize it, this is the theme you get.
(setq-default custom-enabled-themes 'dracula)

;; Ensure that themes will be applied even if they have not been customized
(defun reapply-themes ()
  "Forcibly load the themes listed in `custom-enabled-themes'."
  (dolist (theme custom-enabled-themes)
    (unless (custom-theme-p theme)
      (load-theme theme)))
  (custom-set-variables `(custom-enabled-themes (quote ,custom-enabled-themes))))

(add-hook 'after-init-hook (lambda () (load-theme 'dracula)))


;;----------------------------------------------------------
;; Toggle between light and dark
;;----------------------------------------------------------
(defun light ()
  "Activate a light color theme."
  (interactive)
  (setq custom-enabled-themes '(sanityinc-tomorrow-day))
  (reapply-themes))

(defun dark ()
  "Activate a dark color theme."
  (interactive)
  (setq custom-enabled-themes '(sanityinc-tomorrow-bright))
  (reapply-themes))


(use-package dimmer
  :ensure
  t
  :init
  (setq-default dimmer-fraction 0.1)
  :config
  (add-hook 'after-init-hook 'dimmer-mode))


;;--------------------------------------------
;; powerline
;;--------------------------------------------



(provide 'init-themes)

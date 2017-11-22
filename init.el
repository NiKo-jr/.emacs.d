;; -*- lexical-binding: t -*-

;;; This file bootstraps the configuration, which is divided into
;;; a number of other files.


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-benchmarking) ;; Measure startup time

;;---------------------------------------------------------------------------
;; Adjust garbage collection thresholds during startup, and thereafter
;;---------------------------------------------------------------------------
(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'after-init-hook
	    (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

(require 'init-utils)
(require 'init-elpa)

(require 'init-themes)

(require 'init-org)

(require 'init-company)
(require 'init-helm)

(require 'init-paredit)
(require 'init-lisp)

(require 'server)
(unless (server-running-p)
  (server-start))

(provide 'init)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("9313e289c6d49c96e686ca377e35406dda0d851e26beb3493b427281dbd4fec8" default)))
 '(helm-gtags-auto-update t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 ;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:

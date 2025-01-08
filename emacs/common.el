;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;; (package-initialize)

;; Default configuration for auto-complete
;; M-x package-install RET auto-complete
(require 'auto-complete)
(ac-config-default)

;; Show column position
(setq column-number-mode t)
;; Show line number
(global-display-line-numbers-mode 1)
;; Show a separator between line number and content
;;(setq linum-format "%4d \u2502 ")
;; Disable startup message
(setq inhibit-startup-screen t)
;; Font
(set-frame-font "Droid Sans Mono-9")
;; Highlight selection
(transient-mark-mode t)
;; Selection
(setq x-select-enable-clipboard t)
;; Use tab instead of spaces
(setq-default indent-tabs-mode nil)
;; turn off electric-indent-mode:
(when (fboundp 'electric-indent-mode) (electric-indent-mode -1))

;; Save the backup files to tmp directory
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying t    ; Don't delink hardlinks
      version-control t      ; Use version numbers on backups
      delete-old-versions t  ; Automatically delete excess backups
      kept-new-versions 20   ; how many of the newest versions to keep
      kept-old-versions 5    ; and how many of the old
        )

;; (x-focus-frame nil)

;; Add 80 line limit line
;; M-x package-install RET fill-column-indicator
;; (require 'fill-column-indicator)
;; (setq fci-rule-width 1)
;; (setq fci-rule-color "#F7CB4D")
;; (setq fci-rule-column 80)
;; (add-hook 'c++-mode-hook 'fci-mode)
;; (add-hook 'js-mode-hook 'fci-mode)
;; (add-hook 'python-mode-hook 'fci-mode)
;; (add-hook 'sh-mode-hook 'fci-mode)
(setq-default display-fill-column-indicator-mode 79)
(global-display-fill-column-indicator-mode 1)

;; (require 'compilation-colorization) ;; colorizes output of (i)grep

(load-theme 'tango-dark)

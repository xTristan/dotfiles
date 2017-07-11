;; Show column position
(setq column-number-mode t)
;; Show line number
(global-linum-mode 1)
;; Show a separator between line number and content
(setq linum-format "%4d \u2502 ")
;; Disable startup message
(setq inhibit-startup-screen t)
;; Font
;; (set-default-font "Droid Sans Mono-9")
;; Make the first split: 200 chars : rest
;; (split-window nil 240 t)
;; Further split the 200 chars in half
;; (split-window nil 120 t)
;; Highlight selection
(transient-mark-mode t)
;; Use tab instead of spaces
(setq-default indent-tabs-mode nil)
;; Go-specific
(add-hook 'go-mode-hook
        (lambda ()
                (setq tab-width 2)
))
;; For GUI mode
(x-focus-frame nil)
;; Save the backup files to tmp directory
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying t    ; Don't delink hardlinks
      version-control t      ; Use version numbers on backups
      delete-old-versions t  ; Automatically delete excess backups
      kept-new-versions 20   ; how many of the newest versions to keep
      kept-old-versions 5    ; and how many of the old
      )
;; turn off electric-indent-mode:
(when (fboundp 'electric-indent-mode) (electric-indent-mode -1))

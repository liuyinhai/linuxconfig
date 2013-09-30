;;This file is the configuration of appearance  of Emacs.

(set-background-color "#C7EDCC")

(tool-bar-mode -1)
;; (menu-bar-mode nil)
(scroll-bar-mode nil)
(global-font-lock-mode t)

(setq column-number-mode t)
(setq inhibit-startup-message t)
(setq mouse-yank-at-point t)
(show-paren-mode t)
(setq show-paren-style 'parentheses)
(mouse-avoidance-mode 'animate)
(setq make-backup-files nil) 

;; Dispay the filenam on the title tar.
(setq frame-title-format
      '("" (buffer-file-name "%f"
					(dired-directory dired-directory "%b"))))
;;(global-linum-mode t)
;;(global-linum-mode nil)


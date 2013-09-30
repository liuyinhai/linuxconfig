;;Author:Liu Yinhai
;;Email: yinhai.liu@gmail.com
;;Updated on Mon Sep 30 09:36:45 2013.

(setq load-path (cons "~/.emacs.d" load-path))
(setq load-path (cons "~/.emacs.d/elisp" load-path))

;;the configuration of appearance  of Emacs.n
(load "init-appear")

;;The shortcut for emacs.
(load "init-shortcut")

;;Config the comman program.
(load "init-program")

;;define the utility function
(load "init-function")

;;Config the feature of coding
(load "init-coding")

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(show-paren-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#C7EDCC" :foreground "SystemWindowText" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "outline" :family "Consolas")))))

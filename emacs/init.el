;;Author:Liu Yinhai
;;Email: yinhai.liu@gmail.com
;;Updated on Mon Sep 30 09:36:45 2013.

(setq load-path (cons "~/.emacs.d" load-path))
(setq load-path (cons "~/.emacs.d/elisp" load-path))
;;(setq load-path (cons "~/.emacs.d/elisp/tramp" load-path))

;;the configuration of appearance of Emacs
(load "init-appear")

;;The shortcut for emacs.
(load "init-shortcut")

;;Config the comman program.
(load "init-program")

;;define the utility function
(load "init-function")

;;Config the feature of coding
(load "init-coding")

;; ;; (add-to-list 'load-path "~/Emacs/cedet-1.1/")
;; ;; (add-to-list 'load-path "~/Emacs/cedet-1.1/common/")
;; ;; (load-file "~/Emacs/cedet-1.1/common/cedet.el")
;; ;; Load CEDET.
;; ;; See cedet/common/cedet.info for configuration details.
;; ;; IMPORTANT: For Emacs >= 23.2, you must place this *before* any
;; ;; CEDET component (including EIEIO) gets activated by another 
;; ;; package (Gnus, auth-source, ...).
;; (load-file "~/Emacs/cedet-1.1/common/cedet.el")

;; ;; Enable EDE (Project Management) features
;; (global-ede-mode 1)

;; ;; Enable EDE for a pre-existing C++ project
;; ;; (ede-cpp-root-project "NAME" :file "~/myproject/Makefile")


;; ;; Enabling Semantic (code-parsing, smart completion) features
;; ;; Select one of the following:

;; ;; * This enables the database and idle reparse engines
;; (semantic-load-enable-minimum-features)

;; ;; * This enables some tools useful for coding, such as summary mode,
;; ;;   imenu support, and the semantic navigator
;; (semantic-load-enable-code-helpers)

;; ;; * This enables even more coding tools such as intellisense mode,
;; ;;   decoration mode, and stickyfunc mode (plus regular code helpers)
;; (semantic-load-enable-gaudy-code-helpers)

;; ;; * This enables the use of Exuberant ctags if you have it installed.
;; ;;   If you use C++ templates or boost, you should NOT enable it.
;; ;; (semantic-load-enable-all-exuberent-ctags-support)
;; ;;   Or, use one of these two types of support.
;; ;;   Add support for new languages only via ctags.
;; ;; (semantic-load-enable-primary-exuberent-ctags-support)
;; ;;   Add support for using ctags as a backup parser.
;; ;; (semantic-load-enable-secondary-exuberent-ctags-support)

;; ;; Enable SRecode (Template management) minor-mode.
;; (global-srecode-minor-mode 1)

;; (add-to-list 'load-path "~/Emacs/ecb-2.40")
;; (require 'ecb-autoloads)

;; -*-Emacs-Lisp-*-

(setq load-path (cons "~/elisp" load-path))
(setq column-number-mode t)
(setq inhibit-startup-message t)
(setq mouse-yank-at-point t)
(show-paren-mode t)
(setq show-paren-style 'parentheses)
(mouse-avoidance-mode 'animate)
(setq make-backup-files nil) 

;;背景色
(set-background-color "#C7EDCC")
;; 在标题栏显示文件路径文件名
(setq frame-title-format
      '("" (buffer-file-name "%f"
					(dired-directory dired-directory "%b"))))
;; 去掉工具栏
(tool-bar-mode nil)
;; 去掉菜单栏
;; (menu-bar-mode nil)
;; 去掉滚动条
(scroll-bar-mode nil)
;; 语法高亮
(global-font-lock-mode t)
;; 显示行号
;;(global-linum-mode t)
;;(global-linum-mode nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;快捷键
(global-set-key (kbd "C-1") 'delete-other-windows)
(global-set-key (kbd "C-2") 'wy-go-to-char)
(global-set-key (kbd "C-3") 'copy-region-as-kill) 
(global-set-key (kbd "C-4") 'save-buffer)
(global-set-key (kbd "C-5") 'comment-region)
(global-set-key (kbd "C-6") 'uncomment-region)
(global-set-key (kbd "C-7") 'backward-kill-word)
(global-set-key (kbd "C-8") 'set-mark-command)
(global-set-key (kbd "C-9") 'switch-to-buffer)
(global-set-key (kbd "C-0") 'other-window) 

(global-set-key [f1] 'find-file)
(global-set-key [f2] 'goto-line)
(global-set-key [f3] 'compile)
(global-set-key [f4] 'shell)
(global-set-key [f5] 'switch-to-buffer)
(global-set-key [f6] 'set-mark-command)
(global-set-key [f7] 'mark-whole-buffer)
(global-set-key [f8] 'list-buffers)
(global-set-key [f9] 'dabbrev-expand)
(global-set-key [f10] 'kmacro-end-and-call-macro)
(global-set-key [f11] 'semantic-chart-tag-complexity)
(global-set-key [f12] 'speedbar)
(global-set-key [C-tab] "\C-q\t")   ; Control tab quotes a tab.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key "%" 'match-paren)
(define-key global-map (kbd "C-c o") 'just-one-space)
(define-key global-map (kbd "C-c x") 'kill-region)
(define-key global-map (kbd "C-c c") 'copy-region-as-kill)
(define-key global-map (kbd "C-c t") 'insert-current-time)
(define-key global-map (kbd "C-c d") 'insert-date)
(global-set-key [(control ?\.)] 'ska-point-to-register)
(global-set-key [(control ?\,)] 'ska-jump-to-register)
;; Mouse
(global-set-key [mouse-2] 'imenu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;Setq;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;(setq-default ispell-program-name "aspell -a -l en")

;; Treat 'y' or <CR> as yes, 'n' as no.
(fset 'yes-or-no-p 'y-or-n-p)
(define-key query-replace-map [return] 'act)
(define-key query-replace-map [?\C-m] 'act)

(auto-image-file-mode)



;; ;;;备份设置
;; (setq backup-by-copying-when-mismatch t)
;; (setq make-backup-files t) 
;; (setq version-control t)
;; (setq kept-old-versions 1) 
;; (setq kept-new-versions 5) 
;; (setq delete-old-versions t)
;; (require 'backup-dir) 
;; (setq bkup-backup-directory-info 
;;       '((t "/home/meteor/.backups" ok-create full-path))) 
 
(put 'upcase-region 'disabled nil)

;(load "desktop") 
;(desktop-load-default) 
;(desktop-read)

(setq imaxima-use-maxima-mode-flag t)
(put 'narrow-to-region 'disabled nil)

;;
(global-set-key [(meta ?/)] 'hippie-expand)
(setq hippie-expand-try-functions-list 
      '(try-expand-dabbrev
	try-expand-dabbrev-visible
	try-expand-dabbrev-all-buffers
	try-expand-dabbrev-from-kill
	try-complete-file-name-partially
	try-complete-file-name
	try-expand-all-abbrevs
	try-expand-list
	try-expand-line
	try-complete-lisp-symbol-partially
	try-complete-lisp-symbol))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;require;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(require 'php-mode)
(require 'sams-lib)
;;(require 'color-theme)
;;(color-theme-dark-blue)

;;(require 'template)
;;(template-initialize)

;;(require 'setnu)

;; (require 'ctypes)
;; (ctypes-auto-parse-mode 1)

;;buffer list
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
;;;
;; (require 'tabbar)
;; (tabbar-mode)
;; (global-set-key (kbd "") 'tabbar-backward-group)
;; (global-set-key (kbd "") 'tabbar-forward-group)
;; (global-set-key (kbd "") 'tabbar-backward)
;; (global-set-key (kbd "") 'tabbar-forward)
;; ;;;历史
;; (require 'session)
;; (add-hook 'after-init-hook 'session-initialize)

;; (load "desktop") 
;; (desktop-load-default) 
;; (desktop-read)

(require 'recentf)
(recentf-mode 1)

;; ;;killring
;; (require 'browse-kill-ring)
;; (global-set-key [(control c)(k)] 'browse-kill-ring)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;define function;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
	((looking-at "\\s\)") (forward-char 1) (backward-list 1))
	(t (self-insert-command (or arg 1)))))

(defun wy-go-to-char (n char)
  "Move forward to Nth occurence of CHAR.
Typing `wy-go-to-char-key' again will move forwad to the next Nth
occurence of CHAR."
  (interactive "p\ncGo to char: ")
  (search-forward (string char) nil nil n)
  (while (char-equal (read-char)
		     char)
    (search-forward (string char) nil nil n))
  (setq unread-command-events (list last-input-event)))

(defun ska-point-to-register()
    "Store cursorposition _fast_ in a register. 
  Use ska-jump-to-register to jump back to the stored 
  position."
    (interactive)
      (setq zmacs-region-stays t)
        (point-to-register 8))

(defun ska-jump-to-register()
    "Switches between current cursorposition and position
  that was stored with ska-point-to-register."
    (interactive)
      (setq zmacs-region-stays t)
        (let ((tmp (point-marker)))
	          (jump-to-register 8)
		          (set-register 8 tmp)))
;;;


; insert-current-time
(defun insert-current-time ()
    "Insert the current time"
    (interactive "*")
    (insert (current-time-string)))


; insert-date
(defun insert-date ()
  "Insert date at point."
  (interactive)
  (insert (format-time-string "%Y年%m月%e日 %l:%M %a %p")))

;;c 和 c++ 编程。
(require 'cc-mode)
(define-key c-mode-base-map [(return)] 'newline-and-indent)
(add-hook 'c-mode-hook
	 '(lambda ()
         (c-set-style "k&r")))

;;[code];; C/C++/Java mode 
(defun my-c-mode-hook() 
  ;; 将回车代替C-j的功能，换行的同时对齐 
  (define-key c-mode-map [return] 'newline-and-indent) 
  (interactive) 
  ;; 设置C程序的对齐风格 
  (c-set-style "k&r") 
  ;; 自动模式，在此种模式下当你键入{时，会自动根据你设置的对齐风格对齐 
  ;; (c-toggle-auto-state) 
  ;; 此模式下，当按Backspace时会删除最多的空格 
  (setq tab-width 4 
        ;; this will make sure spaces are used instead of tabs 
        indent-tabs-mode t) 
  (c-toggle-hungry-state) 
  ;; TAB键的宽度设置为8 
  (setq c-basic-offset 4) 
  ;; 在菜单中加入当前Buffer的函数索引 
  (imenu-add-menubar-index) 
  ;; 在状态条上显示当前光标在哪个函数体内部 
  (which-funciton-mode) 
  ) 

(defun my-c++-mode-hook() 
  (define-key c++-mode-map [return] 'newline-and-indent) 
  (interactive) 
  (c-set-style "k&r") 
  ;; (c-toggle-auto-state) 
  (setq tab-width 4 
        ;; this will make sure spaces are used instead of tabs 
        indent-tabs-mode t) 
  (c-toggle-hungry-state) 
  (setq c-basic-offset 4) 
  (imenu-add-menubar-index) 
  (which-function-mode) 
  ) 

(defun my-java-mode() 
  (define-key java-mode-map [return] 'newline-and-indent) 
  (interactive) 
  (c-set-style "java") 
  (c-toggle-auto-state) 
  (c-toggle-hungry-state) 
  (setq c-basic-offset 4) 
  (imenu-add-menubar-index) 
  (which-function-mode) 
  ) 

;;; google-c-style.el --- Google's C/C++ style for c-mode

;; Keywords: c, tools

;; google-c-style.el is Copyright (C) 2008 Google Inc. All Rights Reserved.
;;
;; It is free software; you can redistribute it and/or modify it under the
;; terms of either:
;;
;; a) the GNU General Public License as published by the Free Software
;; Foundation; either version 1, or (at your option) any later version, or
;;
;; b) the "Artistic License".

;;; Commentary:

;; Provides the google C/C++ coding style. You may wish to add
;; `google-set-c-style' to your `c-mode-common-hook' after requiring this
;; file. For example:

;; (add-hook 'c-mode-common-hook 'google-set-c-style)

;; If you want the RETURN key to go to the next line and space over
;; to the right place, add this to your .emacs right after the load-file:

;; (add-hook 'c-mode-common-hook 'google-make-newline-indent)

;; Code:

;; For some reason 1) c-backward-syntactic-ws is a macro and 2)  under Emacs 22
;; bytecode cannot call (unexpanded) macros at run time:
(eval-when-compile (require 'cc-defs))

;; Wrapper function needed for Emacs 21 and XEmacs (Emacs 22 offers the more
;; elegant solution of composing a list of lineup functions or quantities with
;; operators such as "add")
(defun google-c-lineup-expression-plus-4 (langelem)
  "Indents to the beginning of the current C expression plus 4 spaces.

This implements title \"Function Declarations and Definitions\" of the Google
C++ Style Guide for the case where the previous line ends with an open
parenthese.

\"Current C expression\", as per the Google Style Guide and as clarified by
subsequent discussions,
means the whole expression regardless of the number of nested parentheses, but
excluding non-expression material such as \"if(\" and \"for(\" control
structures.

Suitable for inclusion in `c-offsets-alist'."
  (save-excursion
    (back-to-indentation)
    ;; Go to beginning of *previous* line:
    (c-backward-syntactic-ws)
    (back-to-indentation)
    ;; We are making a reasonable assumption that if there is a control
    ;; structure to indent past, it has to be at the beginning of the line.
    (if (looking-at "\\(\\(if\\|for\\|while\\)\\s *(\\)")
        (goto-char (match-end 1)))
    (vector (+ 4 (current-column)))))
        
(defconst google-c-style
  `((c-recognize-knr-p . nil)
    (c-enable-xemacs-performance-kludge-p . t) ; speed up indentation in XEmacs
    (c-basic-offset . 4)
    (indent-tabs-mode . nil)
    (c-comment-only-line-offset . 0)
    (c-hanging-braces-alist . ((defun-open after)
                               (defun-close before after)
                               (class-open after)
                               (class-close before after)
                               (namespace-open after)
                               (inline-open after)
                               (inline-close before after)
                               (block-open after)
                               (block-close . c-snug-do-while)
                               (extern-lang-open after)
                               (extern-lang-close after)
                               (statement-case-open after)
                               (substatement-open after)))
    (c-hanging-colons-alist . ((case-label)
                               (label after)
                               (access-label after)
                               (member-init-intro before)
                               (inher-intro)))
    (c-hanging-semi&comma-criteria
     . (c-semi&comma-no-newlines-for-oneline-inliners
        c-semi&comma-inside-parenlist
        c-semi&comma-no-newlines-before-nonblanks))
    (c-indent-comments-syntactically-p . nil)
    (comment-column . 40)
    (c-cleanup-list . (brace-else-brace
                       brace-elseif-brace
                       brace-catch-brace
                       empty-defun-braces
                       defun-close-semi
                       list-close-comma
                       scope-operator))
    (c-offsets-alist . ((arglist-intro google-c-lineup-expression-plus-4)
                        (func-decl-cont . ++)
                        (member-init-intro . ++)
                        (inher-intro . ++)
                        (comment-intro . 0)
                        (arglist-close . c-lineup-arglist)
                        (topmost-intro . 0)
                        (block-open . 0)
                        (inline-open . 0)
                        (substatement-open . 0)
                        (statement-cont
                         .
                         (,(when (fboundp 'c-no-indent-after-java-annotations)
                             'c-no-indent-after-java-annotations)
                          ,(when (fboundp 'c-lineup-assignments)
                             'c-lineup-assignments)
                          ++))
                        (label . /)
                        (case-label . +)
                        (statement-case-open . +)
                        (statement-case-intro . +) ; case w/o {
                        (access-label . /)
                        (innamespace . 0))))
  "Google C/C++ Programming Style")

(defun google-set-c-style ()
  "Set the current buffer's c-style to Google C/C++ Programming
  Style. Meant to be added to `c-mode-common-hook'."
  (interactive)
  (make-local-variable 'c-tab-always-indent)
  (setq c-tab-always-indent t)
  (c-add-style "Google" google-c-style t))

(defun google-make-newline-indent ()
  "Sets up preferred newline behavior. Not set by default. Meant
  to be added to `c-mode-common-hook'."
  (interactive)
  (define-key c-mode-base-map "\C-m" 'newline-and-indent)
  (define-key c-mode-base-map [ret] 'newline-and-indent))

(provide 'google-c-style)
;;; google-c-style.el ends here

;; (add-hook 'c-mode-hook 'my-c-mode-hook) 
;; (add-hook 'c++-mode-hook 'my-c++-mode-hook) 
(add-hook 'java-mode-hook 'my-java-mode)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
(add-hook 'c++-mode-common-hook 'google-set-c-style)
(add-hook 'c++-mode-common-hook 'google-make-newline-indent)

;;octave mode
(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))

(add-hook 'octave-mode-hook
          (lambda ()
            (abbrev-mode 1)
            (auto-fill-mode 1)
            (if (eq window-system 'x)
                (font-lock-mode 1))))



;;auctex
;; (setq TeX-auto-save t)
;; (setq TeX-parse-self t)
;; (setq-default TeX-master nil)

;; (load "auctex.el" nil t t)
;; (load "preview-latex.el" nil t t)
;; (load "preview-latex.el" nil t t)

;; (add-to-list 'load-path
;;              "~/.emacs.d/plugins/yasnippet-0.6.1c")
;; (require 'yasnippet) ;; not yasnippet-bundle
;; (yas/initialize)
;; (yas/load-directory "~/.emacs.d/plugins/yasnippet-0.6.1c/snippets")

;; ;;             C  mode
;; (add-hook 'c-mode-hook 'hs-minor-mode)
;; (defun my-c-mode-auto-pair ()
;;   (interactive)
;;   (make-local-variable 'skeleton-pair-alist)
;;   (setq skeleton-pair-alist  '(
;;     (?` ?` _ "''")
;;     (?\( ?  _ " )")
;;     (?\[ ?  _ " ]")
;;     (?{ \n > _ \n ?} >)))
;;   (setq skeleton-pair t)
;;   (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
;;   (local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
;;   (local-set-key (kbd "`") 'skeleton-pair-insert-maybe)
;;   (local-set-key (kbd "[") 'skeleton-pair-insert-maybe))
;; (add-hook 'c-mode-hook 'my-c-mode-auto-pair)


;;---------------------------------------------------------------------------------------------------
;;emacs-wiki-----------------------------------------------------------------------------------------
(setq load-path (cons "~/Emacs/emacs-wiki/" load-path))
(require 'emacs-wiki)
(setq emacs-wiki-projects
`(("Sogou" . ((emacs-wiki-directories . ("D:/work/wiki/sogou"))
		(emacs-wiki-project-server-prefix . "../sogou")
                (emacs-wiki-publishing-directory . "D:/work/wiki-site/sogou")))
  ;; ("GNU" . ((emacs-wiki-directories . ("D:/work/wiki/draft/GNU"))
  ;;           (emacs-wiki-publishing-directory . "D:/work/wiki/publish/GNU")))
  ;; ("TeX" . ((emacs-wiki-directories . ("D:/work/wiki/draft/TeX"))
  ;;           (emacs-wiki-publishing-directory . "D:/work/wiki/publish/TeX")))
  ;; ("Programming" . ((emacs-wiki-directories . ("D:/work/wiki/draft/Programming"))
  ;;                   (emacs-wiki-publishing-directory . "D:/work/wiki/publish/Programming")))
  ;; ("Reading" . ((emacs-wiki-directories . ("D:/work/wiki/draft/Reading"))
  ;;               (emacs-wiki-publishing-directory . "D:/work/wiki/publish/Reading")))
  ;; ("Others" . ((emacs-wiki-directories . ("D:/work/wiki/draft/Others"))
  ;;              (emacs-wiki-publishing-directory . "D:/work/wiki/publish/Others")))
  ))

(setq emacs-wiki-meta-content-coding "gbk")
(setq emacs-wiki-meta-charset "gbk") 

(add-hook 'emacs-wiki-mode-hook
          (lambda ()
            (define-key emacs-wiki-mode-map (kbd "C-c C-h") 'emacs-wiki-preview-html)
            (define-key emacs-wiki-mode-map (kbd "C-c C-c") 'emacs-wiki-preview-source)))
(defun emacs-wiki-preview-source ()
  (interactive)
  (emacs-wiki-publish-this-page)
  (find-file (emacs-wiki-published-file)))
(defun emacs-wiki-preview-html ()
  (interactive)
  (emacs-wiki-publish-this-page)
  (browse-url (emacs-wiki-published-file)))


;;---------------------------------------------------------------------------------------------------
;;;;;;;;;;;
(setq header-copyright-notice " Copyright (C) 2011 Yinhai yinhai.liu@gmail.com " )

;(if (file-directory-p "d:/cygwin64/bin")
;    (add-to-list 'exec-path "d:/cygwin64/bin"))

;(setq shell-file-name "bash")
;(setq explicit-shell-file-name shell-file-name)


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

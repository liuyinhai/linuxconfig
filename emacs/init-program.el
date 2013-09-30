
;;(setq-default ispell-program-name "aspell -a -l en")

;; Treat 'y' or <CR> as yes, 'n' as no.
(fset 'yes-or-no-p 'y-or-n-p)
(define-key query-replace-map [return] 'act)
(define-key query-replace-map [?\C-m] 'act)

(auto-image-file-mode)

;;;ÀúÊ·
;; (require 'session)
;; (add-hook 'after-init-hook 'session-initialize)

;; (load "desktop") 
;; (desktop-load-default) 
;; (desktop-read)

(require 'recentf)
(recentf-mode 1)

(setq imaxima-use-maxima-mode-flag t)
(put 'narrow-to-region 'disabled nil)

(require 'org-latex-hack)

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


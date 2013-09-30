;;c �� c++ ��̡�
(require 'cc-mode)
(define-key c-mode-base-map [(return)] 'newline-and-indent)
(add-hook 'c-mode-hook
	 '(lambda ()
         (c-set-style "k&r")))

;;[code];; C/C++/Java mode 
(defun my-c-mode-hook() 
  ;; ���س�����C-j�Ĺ��ܣ����е�ͬʱ���� 
  (define-key c-mode-map [return] 'newline-and-indent) 
  (interactive) 
  ;; ����C����Ķ����� 
  (c-set-style "k&r") 
  ;; �Զ�ģʽ���ڴ���ģʽ�µ������{ʱ�����Զ����������õĶ�������� 
  ;; (c-toggle-auto-state) 
  ;; ��ģʽ�£�����Backspaceʱ��ɾ�����Ŀո� 
  (setq tab-width 4 
        ;; this will make sure spaces are used instead of tabs 
        indent-tabs-mode t) 
  (c-toggle-hungry-state) 
  ;; TAB���Ŀ������Ϊ8 
  (setq c-basic-offset 4) 
  ;; �ڲ˵��м��뵱ǰBuffer�ĺ������� 
  (imenu-add-menubar-index) 
  ;; ��״̬������ʾ��ǰ������ĸ��������ڲ� 
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

(require 'google-c-style)

;; (add-hook 'c-mode-hook 'my-c-mode-hook) 
;; (add-hook 'c++-mode-hook 'my-c++-mode-hook) 
(add-hook 'java-mode-hook 'my-java-mode)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
(add-hook 'c++-mode-common-hook 'google-set-c-style)
(add-hook 'c++-mode-common-hook 'google-make-newline-indent)


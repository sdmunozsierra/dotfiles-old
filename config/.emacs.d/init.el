;; load emacs 24's package system. Add MELPA repository.
(load-library "url-handlers")
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("0cd56f8cd78d12fc6ead32915e1c4963ba2039890700458c13e12038ec40f6f5" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages (quote (helm-R helm powerline-evil ace-window evil ##))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;;;;;;;;;;;;;;;;;;
;;;;; Plugins  ;;;;;
;;;;;;;;;;;;;;;;;;;;

;;; evil
(require 'evil)
(evil-mode 1)

;;; neotree
(require 'neotree)
;(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(global-set-key (kbd "M-o") 'neotree-toggle)
(evil-set-initial-state 'help-mode 'emacs)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)

;;; powerline
(require 'powerline-evil)
(powerline-evil-vim-color-theme)
(setq powerline-arrow-shape 'arrow)

;;; airline
(require 'airline-themes)
(load-theme 'airline-doom-molokai)
;(setq neo-smart-open t)

;;; helm
(require 'helm-config)
(global-unset-key (kbd "C-x c"))
(global-set-key (kbd "M-m") 'helm-command-prefix)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x m") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(helm-mode 1)

;;; auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

;;; yasnipet
(require 'yasnippet)
(yas-global-mode 1)


;;; nlinum
;(require 'linum)

;; Preset `nlinum-format' for minimum width.
(defun my-nlinum-mode-hook ()
  (when nlinum-mode
    (setq-local nlinum-format
                (concat "%" (number-to-string
                             ;; Guesstimate number of buffer lines.
                             (ceiling (log (max 1 (/ (buffer-size) 80)) 10)))
                        "d"))))
(add-hook 'nlinum-mode-hook #'my-nlinum-mode-hook)
(add-hook 'prog-mode-hook 'linum-mode)



;;;;;;;;;;;;;;;;;;;;
;;;;; Settings ;;;;;
;;;;;;;;;;;;;;;;;;;;


;; Remove the tool bar
(customize-set-variable 'tool-bar-mode nil)
;; Remove the scroll bar
(customize-set-variable 'scroll-bar-mode nil)
;; identation
(setq-default indent-tabs-mode nil)
(setq tab-width 2)
;; y/n
(fset 'yes-or-no-p 'y-or-n-p)
;; keep cursor at the middle
(setq scroll-conservatively 10000
      scroll-preserve-screen-position t)

;; Small compiler window set to F9
(defun my-compile ()
	"Run compile and resize the compile window"
	(interactive)
	(progn
		(call-interactively 'compile)
		(setq cur (selected-window))
		(setq w (get-buffer-window "*compilation*"))
		(select-window w)
		(setq h (window-height w))
		(shrink-window (- h 10))
		(select-window cur)
	)	
)

(defun my-compilation-hook () 
  "Make sure that the compile window is splitting vertically"
  (progn
    (if (not (get-buffer-window "*compilation*"))
       (progn
	  		(split-window-vertically)
	   )
	 )
    )
)

(add-hook 'compilation-mode-hook 'my-compilation-hook)
(global-set-key [f9] 'my-compile)

;;;;;;;;;;;;;;;;;;;;
;;;; Shortcuts ;;;;;
;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "M-w") 'ace-window)

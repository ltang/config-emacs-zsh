;; default load path
(add-to-list 'load-path "~/.emacs.d/")

;; path where settings files are kept
(add-to-list 'load-path "~/.emacs.d/settings")

;; define various custom functions
(require 'custom-functions)

;; install related packages
(require 'package-dependencies)

;; global settings
(require 'general-settings)

;; settings for org mode
(require 'org-settings)

;;-----------------------------------------------------------------
;; convert emacs as a python IDE
;; https://realpython.com/blog/python/emacs-the-best-python-editor/
;; install related packages if not yet
;; need package dependency only if we add new ones
;;-----------------------------------------------------------------

;; (set-keyboard-coding-system nil)

;; ;; hide tool-bar
;; (if window-system 
;;     (progn 
;;       (tool-bar-mode -1)

;;       ;; (set-face-attribute  'mode-line
;;       ;;            nil 
;;       ;;            :foreground "gray80"
;;       ;;            :background "dark" 
;;       ;;            :box '(:line-width 1 :style released-button))
;;       (set-face-attribute  'mode-line-inactive
;;                  nil 
;;                  :foreground "gray30"
;;                  :box '(:line-width 1 :style released-button))
;;       ))






;; ; Set PYTHONPATH
;; (setenv "PYTHONPATH" "~/anaconda/lib/python2.7/site-packages:")





;; ;; (require 'python-settings)

;; ;; (load-theme 'material nil) ;; load material theme
;; (elpy-enable)

;; (when (require 'flycheck nil t)
;;   (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
;;   (add-hook 'elpy-mode-hook 'flycheck-mode))

;; (require 'py-autopep8)
;; (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;; (elpy-use-ipython)

;; (require 'ein)
;; ;; (setq ein:use-auto-complete t)
;; ;; (setq ein:use-smartrep t)

;; (require 'auto-complete)
;; (require 'auto-complete-config)
;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;; (ac-config-default)
;; (global-auto-complete-mode t)

;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:complete-on-dot t)                 ; optional


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; OLD version: convert emacs as an Python IDE
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;       (add-to-list 'load-path "~/.emacs.d/emacs-for-python/") ;; tell where to load the various files
;; ;;       (require 'epy-setup)      ;; It will setup other loads, it is required!
;; ;;       (require 'epy-python)     ;; If you want the python facilities [optional]
;; ;;       (require 'epy-completion) ;; If you want the autocompletion settings [optional]
;; ;;       (require 'epy-editing)    ;; For configurations related to editing [optional]
;; ;;      ; (require 'epy-bindings)   ;; For my suggested keybindings [optional]
;; ;;       (require 'epy-nose)       ;; For nose integration

;; ;; ))



;; (setq python-shell-interpreter "ipython")



;; ;; comment/uncomment region
;; (global-set-key (kbd "C-c :") 'uncomment-region)
;; (global-set-key (kbd "C-c ;") 'comment-region)
;; (global-set-key (kbd "<f2>") 'ispell-word)
;; (global-set-key (kbd "<f3>") 'ispell)

;; ;; enable flyspell model for text editing
;; (dolist (hook '(text-mode-hook))
;;   (add-hook hook (lambda () (flyspell-mode 1))))

;; ;; enable flyspell in comments when programming
;; (dolist (mode '(emacs-lisp-mode-hook
;;                 inferior-lisp-mode-hook
;;                 clojure-mode-hook
;;                 python-mode-hook
;;                 js-mode-hook
;;                 R-mode-hook))
;;   (add-hook mode
;;             '(lambda ()
;;                (flyspell-prog-mode))))







;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; csharp mode
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
;; (setq auto-mode-alist
;;      (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))


;; ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; ;; set pig latin mode 
;; ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; (load-file "~/.emacs.d/pig-mode.el")
;; ;; (require 'pig-mode)
;; ;; (which-function-mode t)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; setup to distinguish different files with the same name
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (require 'uniquify)
;; (setq uniquify-buffer-name-style 'reverse)
;; (setq uniquify-separator "/")
;; (setq uniquify-after-kill-buffer-p t) ; rename after killing uniquified

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; enable saving sessions
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; (desktop-save-mode 1)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; hs-minor mode
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; (add-hook 'python-hook-mode hs-minor-mode)
;; ;; (global-set-key (kbd "C-c <left>")  'hs-hide-block)
;; ;; (global-set-key (kbd "C-c <right>") 'hs-show-block)


;; ;; graph-viz
;; ;; (load-file "~/.emacs.d/graphviz-dot-mode.el")

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; R-mode
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (add-hook 'ess-mode-hook
;; 	  '(lambda ()
;; 	     (ess-toggle-underscore nil) ; stop underscore hot key
;; 	     ))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; org-mode
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; emacs mode for evernote
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; (add-to-list 'load-path "~/emacs.d/evernote-mode")
;; ;; (setq evernote-ruby-command "/Users/ltang01/.rvm/rubies/ruby-1.9.2-p320/bin/ruby")
;; ;; (require 'evernote-mode)
;; ;; (setq evernote-enml-formatter-command '("w3m" "-dump" "-I" "UTF8" "-O" "UTF8"))
;; ;; (global-set-key "\C-cec" 'evernote-create-note)
;; ;; (global-set-key "\C-ceo" 'evernote-open-note)
;; ;; (global-set-key "\C-ces" 'evernote-search-notes)
;; ;; (global-set-key "\C-ceS" 'evernote-do-saved-search)
;; ;; (global-set-key "\C-cew" 'evernote-write-note)
;; ;; (global-set-key "\C-cep" 'evernote-post-region)
;; ;; (global-set-key "\C-ceb" 'evernote-browser)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; package for emacs
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;; ;; auto-save desktop
;; (desktop-save-mode -1)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; set up python stuff
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; (load-file "~/.emacs.d/gabrielelanaro-emacs-for-python-030797a/epy-init.el")

;; ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; ;; highlight matching parenthesis
;; ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; (setq blink-matching-paren 1)
;; ;; (setq mac-command-modifier nil)
;; ;; (setq mac-option-modifier 'meta)

;; ;; (global-set-key "\C-w" 'clipboard-kill-region)
;; ;; (global-set-key "\M-w" 'clipboard-kill-ring-save)
;; ;; (global-set-key "\C-y" 'clipboard-yank)


;; ;; (setq inhibit-startup-message t) ;; hide the startup message
;; ;; ;; NO Tabs!!
;; ;; (setq-default tab-width 4)
;; ;; (setq-default indent-tabs-mode nil)
;; ;; (global-linum-mode t) ;; enable line


;; ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; ;; put all backup files in one location
;; ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; (setq backup-directory-alist `(("." . "~/.saves")))
;; ;; (setq backup-by-copying t)
;; ;; (setq delete-old-versions t
;; ;;   kept-new-versions 6
;; ;;   kept-old-versions 2
;; ;;   version-control t)


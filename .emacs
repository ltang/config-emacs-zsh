;; default load path
;; ____________________________________________________________________________
;; Aquamacs custom-file warning:
;; Warning: After loading this .emacs file, Aquamacs will also load
;; customizations from `custom-file' (customizations.el). Any settings there
;; will override those made here.
;; Consider moving your startup settings to the Preferences.el file, which
;; is loaded after `custom-file':
;; ~/Library/Preferences/Aquamacs Emacs/Preferences
;; _____________________________________________________________________________

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/")

;; path where settings files are kept
(add-to-list 'load-path "~/.emacs.d/settings")

;; define various custom functions
(require 'custom-functions)

;; install related packages
(require 'package-dependencies)

;; global settings
(require 'general-settings)


;; ----------
;; utilities
;; ----------

;; yasnippet
; (require 'yasnippet-settings)

;; Auto complete
(require 'auto-complete-settings)

;; hide show
; (require 'hs-settings)

;; -----------------
;; variety of modes
;; -----------------

;; org mode
(require 'org-settings)

;; python-mode
;; (require 'python-settings)

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
;; ;; set pig latin mode 
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (load-file "~/.emacs.d/pig-mode.el")
;; (require 'pig-mode)
;; (which-function-mode t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; hs-minor mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (add-hook 'python-hook-mode hs-minor-mode)
;; (global-set-key (kbd "C-c <left>")  'hs-hide-block)
;; (global-set-key (kbd "C-c <right>") 'hs-show-block)


;; ;; graph-viz
;; ;; (load-file "~/.emacs.d/graphviz-dot-mode.el")




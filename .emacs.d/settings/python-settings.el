;;-----------------------------------------------------------------
;; convert emacs as a python IDE
;; https://realpython.com/blog/python/emacs-the-best-python-editor/
;;-----------------------------------------------------------------
; Set PYTHONPATH
(setenv "PYTHONPATH" "~/anaconda/lib/python2.7/site-packages:")

(setq
 python-shell-interpreter "ipython"
 python-shell-interpreter-args (if (system-is-mac)
				   "--matplotlib=osx --colors=Linux"
                                   (if (system-is-linux)
				       "--gui=wx --matplotlib=wx --colors=Linux"))
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
   "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code
   "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
   "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")

;; -----------------------------
;; emacs IPython notebook config
;; -----------------------------

(setq ein:complete-on-dot 0)
(setq ein:use-auto-complete 1)

; set python console args
(setq ein:console-args
      (if (system-is-mac)
	  '("--gui=osx" "--matplotlib=osx" "--colors=Linux")
	(if (system-is-linux)
	    '("--gui=wx" "--matplotlib=wx" "--colors=Linux"))))

; timeout settings
(setq ein:query-timeout 1000)
(require 'ein)

; shortcut function to load notebooklist
(defun load-ein () 
  (ein:notebooklist-load)
  (interactive)
  (ein:notebooklist-open))


;; --------------
;; elpy
;; --------------

(elpy-enable)

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;;(elpy-use-ipython)

(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'hs-minor-mode)

(provide 'python-settings)







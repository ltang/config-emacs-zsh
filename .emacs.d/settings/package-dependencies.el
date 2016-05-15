(require 'package)
(set-variable package-check-signature nil)

(add-to-list 'package-archives '("melpa" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    elpy
    ein ;; add ein package for ipython notebook
    jedi
    flycheck
    py-autopep8
    exec-path-from-shell
    auto-complete
    org-bullets
))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

(provide 'package-dependencies)

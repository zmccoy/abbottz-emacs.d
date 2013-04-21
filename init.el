(add-to-list 'load-path "~/.emacs.d/mine")

(require 'mine-env)
(require 'mine-builtin) ;; split up
(require 'mine-defuns)
(require 'mine-advice)
(require 'mine-bindings)
(require 'mine-desktop)
(require 'mine-pretty)
(require 'mine-pkgmgt)
(require 'mine-connections)

;; load files under custom/*.el
(let ((custom-files (directory-files "~/.emacs.d/custom/" t "\.el$")))
 (mapcar 'load-file custom-files))

(setq custom-file (expand-file-name "~/.emacs.d/customizations.el"))
(load custom-file)

(cd (getenv "HOME"))
(mine-normal-display)

(display-time)
(display-battery-mode)
(column-number-mode)
(toggle-case-fold-search)
(mine-use-transparency) ;; needed for separate emacs clients starting up transparent
(rcirc-track-minor-mode)

(server-start)

;;(mine-irc-login)
(put 'ido-exit-minibuffer 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)

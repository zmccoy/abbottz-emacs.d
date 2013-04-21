(add-hook 'scala-mode-hook '(lambda ()
                             (local-set-key (kbd "RET") 'newline-and-indent)))

(add-hook 'scala-mode-hook '(lambda ()
                             (c-subword-mode t)))

(add-to-list 'auto-mode-alist '("\\.sbt\\'" . scala-mode))
(add-to-list 'auto-mode-alist '("\\.jade\\'" . scala-mode))

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook 'org-bullets-mode))

(setq org-log-done t
      org-todo-keywords '((sequence "TODO" "INPROGRESS" "DONE"))
      org-todo-keyword-faces '(("INPROGRESS" . (:foreground "blue" :weight bold))))
(add-hook 'org-mode-hook
          (lambda ()
            (flyspell-mode)))

(use-package writegood-mode
  :ensure t
  :config  
  (add-hook 'org-mode-hook
            (lambda ()
            (writegood-mode))))

(add-hook 'org-mode-hook (lambda () (abbrev-mode 1)))

(provide 'init-org)

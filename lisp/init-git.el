(use-package magit
  :ensure t)

(global-set-key (kbd "C-x g") 'magit-status)

(use-package git-gutter
  :ensure t
  :config
  (global-git-gutter-mode t))

(provide 'init-git)

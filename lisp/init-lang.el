
;; Yaml
(use-package yaml-mode
  :ensure t
  :config
  (progn
    (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
    (add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))))

;; .gitconfig
(add-to-list 'auto-mode-alist '("\\.gitconfig$" . conf-mode))

;; Web
(use-package web-mode
  :ensure t
  :init
  (setq web-mode-style-padding 2
	web-mode-script-padding 2
	web-mode-markup-indent-offset 2
	web-mode-css-indent-offset 2
	web-mode-code-indent-offset 2)
  :config
  (progn 
    (add-to-list 'auto-mode-alist '("\\.hbs$" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.erb$" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.html$" . web-mode))))

;; Markdown
(use-package markdown-mode
  :ensure t  
  :config
  (progn
    (add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
    (add-to-list 'auto-mode-alist '("\\.mdown$" . markdown-mode))
    (add-hook 'markdown-mode-hook
	      (lambda ()
		(visual-line-mode t)
		(writegood-mode t)
		(flyspell-mode t)))
    (setq markdown-command "pandoc --smart -f markdown -t html")))


    
(provide 'init-lang)

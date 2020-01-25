;; Enable Elpy by default
(elpy-enable)

;; Standard Jedi.el setting
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot 1)

;; Enable Elpy by default
(elpy-enable)

;; Enable Flycheck
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; Standard Jedi.el setting
;(add-hook 'python-mode-hook 'jedi:setup)
;(setq jedi:complete-on-dot 1)

;; Standard company-jedi setting
(defun my/python-mode-hook ()
  add-to-list 'company-backends 'company-jedi)
(add-hook 'python-mode-hook 'my/python-mode-hook)

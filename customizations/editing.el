;; Key binding to use "hippie expand" for text autocompletion.
;; http://www.emacswiki.org/emacs/HippieExpand
(global-set-key (kbd "M-/") 'hippie-expand)

;; Highlight current line.
(global-hl-line-mode 1)

;; Highlights matching parenthesis.
(show-paren-mode 1)

;; Interactive search key bindings.
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;; Emacs can automatically create backup files.
;; This tells Emacs to put all backups in
;; ~/emac.d/backups.
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq auto-save-default nil)

;; Globally prettify symbols
(global-prettify-symbols-mode 1)
(setq prettify-symbols-alist '(("lambda" . 955)))

;; Don't use hard tabs
(setq-default indent-tabs-mode nil)

;; Key binding to use "hippie expand" for text autocompletion.
;; http://www.emacswiki.org/emacs/HippieExpand
(global-set-key (kbd "M-/") 'hippie-expand)

;; Highlight current line.
(global-hl-line-mode 1)

;; Highlights matching parenthesis.
(show-paren-mode 1)

;; Emacs can automatically create backup files.
;; This tells Emacs to put all backups in
;; ~/emac.d/backups.
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq auto-save-default nil)

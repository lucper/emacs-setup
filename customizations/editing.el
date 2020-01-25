;; Globally prettify symbols.
(global-prettify-symbols-mode 1)
(setq prettify-symbols-alist '(("lambda" . 955)))

;; Use spaces for tab.
(setq-default indent-tabs-mode nil)

;; Comments.
(defun toggle-comment-on-line ()
  "Comment or uncomment current line"
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))
(global-set-key (kbd "C-;") 'toggle-comment-on-line)

;; Use 4 spaces for tabs.
(defun die-tabs ()
  (interactive)
  (set-variable 'tab-width 4)
  (mark-whole-buffer)
  (untabify (region-beginning) (region-end))
  (keyboard-quit))

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

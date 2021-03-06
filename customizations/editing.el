;; Enable YASnippet globally
(yas-global-mode 1)
(global-set-key (kbd "<C-tab>") 'yas-expand)

;; Enable Company globally
(add-hook 'after-init-hook 'global-company-mode)

;; Code for solving conflicts with integration
;; between company and yasnippet.
;; https://www.emacswiki.org/emacs/CompanyMode
(defun check-expansion ()
  (save-excursion
    (if (looking-at "\\_>") t
      (backward-char 1)
      (if (looking-at "\\.") t
        (backward-char 1)
        (if (looking-at "->") t nil)))))
(defun do-yas-expand ()
  (let ((yas/fallback-behavior 'return-nil))
    (yas/expand)))
(defun tab-indent-or-complete ()
  (interactive)
  (if (minibufferp)
      (minibuffer-complete)
    (if (or (not yas/minor-mode)
            (null (do-yas-expand)))
        (if (check-expansion)
            (company-complete-common)
          (indent-for-tab-command)))))
(global-set-key [tab] 'tab-indent-or-complete)

;; Globally prettify symbols.
(setq prettify-symbols-alist '(("alpha" . "#X03B1")
                               ("lambda" . "#X03BB")
                               ("beta" . "#X03B2")
                               ("gamma" . "#X03B3")
                               ("delta" . "#X03B4")))
(global-prettify-symbols-mode 1)

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

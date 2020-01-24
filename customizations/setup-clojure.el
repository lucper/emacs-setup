;; Enable paredit for Clojure.
(add-hook 'clojure-mode-hook 'enable-paredit-mode)

;; Useful for working with CamelCase tokens, like
;; names of Java classes.
(add-hook 'clojure-mode-hook 'subword-mode)

;; Extra syntax highlighting.
(require 'clojure-mode-extra-font-locking)

;; Provides minibuffer documentation for the code being
;; typed into the REPL.
(add-hook 'cider-mode-hook 'eldoc-mode)

;; Where to store the cider history.
(setq cider-repl-history-file "~/.emacs.d/cider-history")

;; Wrap when navigating history.
(setq cider-repl-wrap-history t)

;; Enable paredit in your REPL.
(add-hook 'cider-repl-mode-hook 'paredit-mode)

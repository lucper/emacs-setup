;;;;;;;;;;;;;;
;; Packages ;;
;;;;;;;;;;;;;;

;; Define package repositories.
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
	     '("tromey" . "http://tromey.com/elpa/"))

;; Load and activate Emacs packages. Do this first so that the
;; packages are loaded before you start trying to modify them.
;; This also sets the load path.
(package-initialize)

;; Informs Emacs about the latest versions of all packages
;; and makes them available for download.
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(;; Helps handling Lisp expressions
    paredit

    ;; Auto-completion for source code and REPL
    company

    ;; Collection of snippets for yasnippet
    yasnippet-snippets
    
    ;; Enhanced editing for Python
    elpy
    ;jedi
    company-jedi
    
    ;; Enhanced editing for Clojure
    clojure-mode
    clojure-mode-extra-font-locking
    cider
    
    ;; Enhanced editing for Racket/Scheme
    racket-mode
    geiser

    ;; Colorful parenthesis mathcing
    rainbow-delimiters

    ;; Syntax checking
    flycheck
    
    ;; Navigation and autocompletion
    ivy

    ;; Searches inside files
    swiper

    ;; Extra functionalities for Ivy
    counsel
    
    ;; Git integration
    magit
    
    ;; Ensures environment variables inside Emacs look the
    ;; same as in the user's shell.
    ;; http://github.com/purcell/exec-path-from-shell
    exec-path-from-shell
    
    ;; Custom icons
    all-the-icons
    all-the-icons-ivy
    
    ;; Spacemacs themes
    spacemacs-theme

    ;; Project navigation
    projectile
    
    ;; Startup screen
    dashboard

    ;; Enhanced editing for C/C++
    irony
    irony-eldoc
    flycheck-irony
    company-irony
    company-irony-c-headers))

(dolist (package my-packages)
  (when (not (package-installed-p package))
    (package-install package)))

;; Sets $PATH from shell
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;;;;;;;;;;;;;;;;;;;;
;; Customizations ;;
;;;;;;;;;;;;;;;;;;;;

;; Add this directory to load path so that we can `load`
;; things below.
(add-to-list 'load-path "~/.emacs.d/customizations")

;; Make editing nicer.
(load "editing.el")

;; Change the way Emacs looks.
(load "ui.el")

;; Make navigation easier.
(load "navigation.el")

;; Languages setups
; Python setup
(load "setup-python.el")
; Clojure setup
(load "setup-clojure.el")
; C-like setup
(load "setup-c.el")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Added by Custom automatically ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (company-irony-c-headers company-irony flycheck-irony irony-eldoc irony company-jedi yasnippet-snippets transient all-the-icons-ivy counsel swiper ivy exec-path-from-shell elpy geiser projectile page-break-lines all-the-icons racket-mode dashboard undo-tree rainbow-delimiters persistent-soft paredit magit cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

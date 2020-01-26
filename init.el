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

    ;; Python extension
    elpy

    ;; Autocompletion for Python
    jedi
    
    ;; Key bindings and code colorization for Clojure
    clojure-mode

    ;; Extra syntax highlighting for Clojure
    clojure-mode-extra-font-locking

    ;; Integration with Clojure REPL
    cider
    
    ;; Key bindings and code colorization for Racket
    racket-mode

    ;; Collection of major and minor modes for Schemes
    geiser

    ;; Colorful parenthesis mathcing
    rainbow-delimiters

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

    ;; Custom icons for ivy
    all-the-icons-ivy
    
    ;; Spacemacs themes
    spacemacs-theme

    ;; Project navigation
    projectile
    
    ;; Startup screen
    dashboard))

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

;; Python setup
(load "setup-python.el")

;; Clojure setup
(load "setup-clojure.el")

;; Make editing nicer.
(load "editing.el")

;; Change the way Emacs looks.
(load "ui.el")

;; Make navigation easier.
(load "navigation.el")

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
    (transient all-the-icons-ivy counsel swiper ivy exec-path-from-shell jedi elpy geiser projectile page-break-lines all-the-icons racket-mode dashboard undo-tree smex rainbow-delimiters persistent-soft paredit magit cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

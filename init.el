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
  '(;; Helps handling Lisp expressions.
    paredit

    ;; Key bindings and code colorization for Clojure.
    clojure-mode

    ;; extra syntax highlighting for Clojure
    clojure-mode-extra-font-locking
    
    ;; Key bindings and code colorization for Racket
    racket-mode
    
    ;; Integration with Clojure REPL.
    cider

    ;; Colorful parenthesis mathcing.
    rainbow-delimiters

    ;; Allows ido usage in as many contexts as possible.
    ido-completing-read+
    
    ;; Git integration.
    magit

    ;; Enhances M-x to allow easir execution of commands.
    smex
    
    ;; Custom icons
    all-the-icons

    ;; Spacemacs themes
    spacemacs-theme

    ;; Startup screen
    dashboard))

(dolist (package my-packages)
  (when (not (package-installed-p package))
    (package-install package)))

;;;;;;;;;;;;;;;;;;;;
;; Customizations ;;
;;;;;;;;;;;;;;;;;;;;

;; Add this directory to load path so that we can `load`
;; things below.
(add-to-list 'load-path "~/.emacs.d/customizations")

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
    (all-the-icons racket-mode dashboard undo-tree smex rainbow-delimiters persistent-soft paredit magit cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

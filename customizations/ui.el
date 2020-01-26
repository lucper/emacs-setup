;; Removes the tool bar
(tool-bar-mode -1)

;; Removes the scroll bar
(toggle-scroll-bar -1)

;; Removes the menu bar
(menu-bar-mode -1)

;; Custom icons
(require 'all-the-icons)

;; Custom icons for Ivy
(all-the-icons-ivy-setup)

;; Displays ugly form feed characters as
;; tidy horizontal rules.
;; Dependency for dashboard package.
(require 'page-break-lines)

;; Changes startup screen.
(require 'dashboard)
(dashboard-setup-startup-hook)
(setq dashboard-startup-banner 'logo)     ; displays an alternative Emacs logo
(setq dashboard-center-content t)         ; center the content
(setq dashboard-show-shortcuts nil)       ; disable shortcut "jump" indicators for each section
(setq dashboard-set-heading-icons t)      ; add icons to headings
(setq dashboard-set-file-icons t)         ; add icons to files 
(setq dashboard-items '((recents . 10)
			(projects . 5)
			(bookmarks . 5))) ; customize which widgets are displayed

;; Themes
(load-theme 'spacemacs-light t)

;; Enable rainbow-delimiters in Racket and Clojure.
(add-hook 'racket-mode-hook #'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)



(require 'all-the-icons)

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

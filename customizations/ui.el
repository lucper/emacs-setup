;; Changes startup screen.
(require 'dashboard)
(dashboard-setup-startup-hook)

;; Add custom icons.
(require 'all-the-icons)

;; Displays ugly form feed characters as
;; tidy horzontal rules.
;; Dependency for dashboard package.
(require 'page-break-lines)

;; Themes
(load-theme 'spacemacs-light t)

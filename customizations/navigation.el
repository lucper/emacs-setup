;; Turn on Ivy by default
(ivy-mode 1)

;; Magit command
(global-set-key (kbd "C-x g") 'magit-status)

;; Binding Swiper and Counsel commmands
(global-set-key (kbd "C-s") 'swiper)                ; Replaces isearch with swiper
(global-set-key (kbd "M-x") 'counsel-M-x)           ; Gives M-x command Counsel features
(global-set-key (kbd "C-x C-f") 'counsel-find-file) ; Gives C-x C-f command Counsel features
(global-set-key (kbd "<f1> f") 'counsel-describe-function) 
(global-set-key (kbd "<f1> v") 'counsel-describe-variable) 
(global-set-key (kbd "<f1> l") 'counsel-find-library) 
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol) 
(global-set-key (kbd "<f2> u") 'counsel-unicode-char) 
(global-set-key (kbd "C-c g") 'counsel-git)         
(global-set-key (kbd "C-c j") 'counsel-git-grep)    
(global-set-key (kbd "C-c k") 'counsel-ag)          ; Add Counsel/Ivy features to ag package
(global-set-key (kbd "C-x l") 'counsel-locate) 
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "C-x b") 'ivy-switch-buffer)

;; Turn on recent file mode so that you can more easily switch to
;; recently edited files when you first start emacs.
(setq recentf-save-file "~/.emacs.d/.recentf")
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 40)

;; When visiting identically-named files, include part of the file's
;; directory name at the baginning of the buffer name.
;; http://www.gnu.org/software/emacs/manual/html_node/emacs/Uniquify.html
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; Project navigation
;; http://www.projectile.mx/en/latest/
;(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
;(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(projectile-global-mode)

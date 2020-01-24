;; Shows a list of buffers.
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Enhances M-x to allow easier execution of commands. Provides
;; a filterable list of possible commands in the minibuffer.
;; http://www.emacswiki.org/emacs/Smex
(setq smex-save-file "~/.emacs.d/.smex-items")
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)

;; iso-mode allows to more easily navigate choices. For example,
;; when you want to switch buffers, iso presents a list of buffers
;; in the minibuffer. As you start to type a buffer's name, ido
;; will narrow down the list of buffers to match the text you've
;; typed in.
;; http://www.emacswiki.org/emacs/InteractiveDoThings
(ido-mode t)
(setq ido-enable-flex-matching t)    ; allows partial matches
(setq ido-use-filename-at-point nil) ; don't use the name at point
(setq ido-use-virtual-buffers t)     ; includes buffer names of recently open files

;; Enables ido in all contexts where it could be useful.
(ido-ubiquitous-mode t)
(ido-everywhere t)

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

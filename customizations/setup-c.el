;; Indentation styles
(setq c-default-style '((java-mode . "java")
                        (awk-mode . "awk")
                        (other . "k&r")))

;; Indentation for nested code
(setq c-basic-offset 4)

;; Enabling irony-mode for C/C++
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;; Enabling company-mode for C/C++
(add-hook 'c++-mode-hook 'company-mode)
(add-hook 'c-mode-hook 'company-mode)

;; Enabling flycheck-mode
(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'c-mode-hook 'flycheck-mode)
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

;; Enabling eldoc-mode
(add-hook 'irony-mode-hook 'irony-eldoc)

;; Add C headers to company
;; /usr/include/c++/9
;; /usr/include/x86_64-linux-gnu/c++/9
;; /usr/include/c++/9/backward
;; /usr/lib/gcc/x86_64-linux-gnu/9/include
;; /usr/local/include
;; /usr/lib/gcc/x86_64-linux-gnu/9/include-fixed
;; /usr/include/x86_64-linux-gnu
;; /usr/include
(add-to-list 'company-backends 'company-irony-c-headers)

;; -*- mode: Lisp -*-

; Include the following line in .emacs:
; (load "~/directory_to/settings/emacs/devon")

;; Line numbers
(global-linum-mode 1)

;; Color theme
;(load-theme 'leuven t)
;(load-theme 'zenburn t)

;; Scale Latex
(plist-put org-format-latex-options :scale 1.5)

;; Scale inline images
(setq org-image-actual-width '(400))

;; Evil mode
(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-mode 1)

;; Open recent files with C-x f
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-xf" 'helm-recentf)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Jmax requirements

;; Set theme
(setq jmax-user-theme 'leuven)
;(setq jmax-user-theme 'zenburn)

;; Turn on spell checking
(add-hook 'org-mode-hook 'turn-on-flyspell)

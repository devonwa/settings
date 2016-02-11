;; -*- mode: Lisp -*-

;; Add melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Line numbers
(global-linum-mode 1)

;; Color theme
;(load-theme 'leuven t)
;(load-theme 'zenburn t)

;; Evil mode
(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-mode 1)

;; Open recent files in helm with C-x f
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-xf" 'helm-recentf)

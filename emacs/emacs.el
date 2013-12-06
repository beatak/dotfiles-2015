;; -*- coding: utf-8 -*-

;; load package first
(require 'package)
(setq package-user-dir "~/.emacs.d/elpa/")
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)
(package-refresh-contents)

;; favorite packages
(defvar my/favorite-packages
  '(
    ;;;; for auto-complete
    auto-complete fuzzy popup pos-tip
    ;;;; buffer utils
    popwin elscreen yascroll buffer-move
    ;;;; flymake
    flycheck flymake-jslint flymake-php
    ;;;; php
    ;; php-mode php+-mode
    ;;;; python
    jedi
    ;;;; helm
    helm
    ;;;; js2
    js2-mode
    ;;;; scss
    scss-mode
    ))

;; install favorites if it hasn't
(dolist (package my/favorite-packages)
  (unless (package-installed-p package)
    (package-install package)))

;; (add-to-list 'load-path "~/.emacs.d/site-lisp")
(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/init")

;; 00 general configuration
;; 10 pre init
;; 20 custom functions
;; 30 extentional
;; 40 major mode
;; 50 minor mode
;; 60 post init

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(css-indent-offset 4)
 '(custom-safe-themes (quote ("9ea054db5cdbd5baa4cda9d373a547435ba88d4e345f4b06f732edbc4f017dc3" default)))
 '(indent-tabs-mode nil)
 '(js2-basic-offset 4)
 '(js2-bounce-indent-p t)
 '(tab-width 4)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

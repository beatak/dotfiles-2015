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
    ;; auto-complete fuzzy popup pos-tip
    ;;;; buffer utils
    ;; popwin elscreen yascroll buffer-move
    ;;;; flymake
    ;; flycheck flymake-jslint flymake-php
    ;;;; php
    php-mode ;;php+-mode
    ;;;; python
    ;; jedi
    ;;;; helm
    helm
    ;;;; helm + ac
    auto-complete ac-helm
    ;;;; js2
    js2-mode
    ;;;; scss
    scss-mode
    ;;;; web template
    web-mode smarty-mode
    ;;;; frame resizer
    maxframe
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

(when (string= system-name "lyre.local")
  (load-file "~/.emacs.d/environmental/lyre.local.el")
)

(when (string= system-name "2571")
  (load-file "~/.emacs.d/environmental/2571.el")
)

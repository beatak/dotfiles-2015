;; 
;; 
;; initialization
;; 
;;

;; Backup and temp dir
(setq make-backup-files t)       ; enable backup file
(setq backup-directory-alist
  (cons 
    (cons "\\.*$" 
      (expand-file-name "~/.backup"))
    backup-directory-alist))
(setq version-control t)     ; enable versions of backup
(setq kept-new-versions 5)   ; how many keep new verisons
(setq kept-old-versions 5)   ; how many keep old versions
(setq delete-old-versions t) ; delete old version without asking
(setq vc-make-backup-files t) ; still make a backup for version-controled files
(defvar user-temporary-file-directory
  (concat temporary-file-directory user-login-name "/"))
(make-directory user-temporary-file-directory t)
(setq backup-by-copying t)
(setq backup-directory-alist
  `(
    ("." . ,user-temporary-file-directory)
    (,tramp-file-name-regexp nil)))
(setq auto-save-list-file-prefix
  (concat user-temporary-file-directory "/autosave/.auto-saves-"))
(setq auto-save-file-name-transforms
  `(
    (".*" ,(concat user-temporary-file-directory "/autosave/_") t)))

;; Do not ring a bell
(setq ring-bell-function 'ignore)

;; line-by-line scroll
(setq scroll-step 1)

;; display line and row number on status bar
(column-number-mode t)
(setq default-fill-column 72)

;; word wrap
(setq truncate-lines nil)
(setq truncate-partial-width-windows nil)

;; disable startup message
(setq inhibit-startup-message t)

;; highlight current line
(global-hl-line-mode 1)

;; line nubmer
(global-linum-mode 1)

;; font size
(set-face-attribute 'default nil :height 160)

;; uniquify
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; disabling auto save for tramp incapability but i may want to turn back up...
(setq backup-inhibited t)     ;disable backup
(setq auto-save-default nil)  ;disable auto save

;; not showing menu bar
(menu-bar-mode nil)
(custom-set-variables '(tool-bar-mode nil))

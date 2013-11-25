;;
;;
;; Desktop
;; naming is weird, but this is basically 
;; saving the status of opened files
;;

(setq desktop-files-not-to-save "\\(^/[^/:]*:\\)")
(autoload 'desktop-save "desktop" nil t)
(autoload 'desktop-clear "desktop" nil t)
(autoload 'desktop-load-default "desktop" nil t)
(autoload 'desktop-remove "desktop" nil t)
(desktop-read)
(add-hook 'kill-emacs-hook 'desktop-save-in-desktop-dir)


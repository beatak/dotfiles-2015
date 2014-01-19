
(defun back-window () "Reverse other-window" (interactive) (other-window -1))

(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

(add-hook 'before-save-hook
          (lambda ()
            (when buffer-file-name
              (let ((dir (file-name-directory buffer-file-name)))
                (when (and (not (file-exists-p dir))
                           (y-or-n-p (format "Directory %s does not exist. Create it?" dir)))
                  (make-directory dir t))))))

http://stackoverflow.com/questions/3766296/setting-frame-size-in-emacs-on-toggle-out-of-fullscreen
;;; Set frame width - used on toggle out of fullscreen mode
(defun default-frame-width ()
    "Set width of selected frame."
    (modify-frame-parameters
     (selected-frame)
     (list (cons 'width 140))))

;;; This used to be in Carbon Emacs, puttin' it back in with my own twist
(defun mac-toggle-max-window ()
  (interactive)
  (set-frame-parameter nil 'fullscreen 
                       (if (frame-parameter nil 'fullscreen)
                           (progn
                             (scroll-bar-mode 1) ;; turn on scrollbars when not in fullscreen mode
                             (default-frame-width)
                             nil)
                         (progn
                           (scroll-bar-mode -1) ;; turn off scrollbars when in fullscreen mode
                           'fullboth))))



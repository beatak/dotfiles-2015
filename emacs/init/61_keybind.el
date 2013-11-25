;; keybinding

;; custom
(global-set-key "%" 'match-paren)
(global-set-key (kbd "C-x p") 'back-window)
(global-set-key (kbd "C-h") 'backward-delete-char-untabify)
(global-unset-key (kbd "C-x C-c"))

;; symbol highlight
(global-set-key [f3] 'highlight-symbol-at-point)
(global-set-key [f4] 'highlight-symbol-next)

;; e2wm
(global-set-key (kbd "M-+") 'e2wm:start-management)
(e2wm:add-keymap 
 e2wm:pst-minor-mode-keymap
 '(("<M-left>" . e2wm:dp-code) ; codeへ変更
   ("<M-right>"  . e2wm:dp-two)  ; twoへ変更
   ("<M-up>"    . e2wm:dp-doc)  ; docへ変更
   ("<M-down>"  . e2wm:dp-dashboard) ; dashboardへ変更
   ("C-."       . e2wm:pst-history-forward-command) ; 履歴を進む
   ("C-,"       . e2wm:pst-history-back-command) ; 履歴をもどる
   ("prefix L"  . ielm)
   ("M-m"       . e2wm:pst-window-select-main-command)
   ) e2wm:prefix-key)

;; auto-complete
(global-set-key (kbd "M-_") 'auto-complete)

;; helm
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(define-key helm-find-files-map (kbd "<tab>") 'helm-execute-persistent-action)
;; (global-set-key (kbd "C-x C-r") 'helm-recentf)
;; (defvar helm-map
;;   (let ((map (make-sparse-keymap)))
;;     (define-key map (kbd "<tab>") 'helm-execute-persistent-action)))



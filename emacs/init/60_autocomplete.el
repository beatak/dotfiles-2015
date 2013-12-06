
;; (add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20130122.1551")
;; (add-to-list 'load-path "~/.emacs.d/elpa/popup-20130117.1954")

(require 'auto-complete-config)
(ac-config-default)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")

(setq ac-auto-start 1)       ; character count for begin auto-complete
(setq ac-auto-show-menu 0.2) ; seconds for begin auto-complete
(setq ac-sources '(ac-source-yasnippet
                   ac-source-dictionary
                   ac-source-gtags
                   ac-source-words-in-buffer))

(add-to-list 'ac-modes 'emacs-lisp-mode)

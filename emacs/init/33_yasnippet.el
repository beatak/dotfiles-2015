
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-20130112.1823")
(require 'yasnippet)

(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"            ;; personal snippets
        "~/.emacs.d/elpa/yasnippet-20130112.1823/snippets"    ;; the default collection
        ))

(yas-global-mode 1)

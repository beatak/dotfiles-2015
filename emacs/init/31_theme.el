;; load theme

;; soloarized-dark
(add-to-list 'load-path "~/.emacs.d/elpa/solarized-theme-20130108.651")
(require 'solarized)
(custom-set-variables
 '(custom-safe-themes (quote ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
)
(load-theme 'solarized-dark t)

;; zenburn
;; (add-to-list 'load-path "~/.emacs.d/elpa/zenburn-theme-20130129.1529")
;; (custom-set-variables
;;  '(custom-safe-themes (quote ("0bac11bd6a3866c6dee5204f76908ec3bdef1e52f3c247d5ceca82860cccfa9d" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
;;  '(safe-local-variable-values (quote ((eval when (fboundp (quote rainbow-mode)) (rainbow-mode 1)))))
;; )
;; (load-theme 'zenburn t)




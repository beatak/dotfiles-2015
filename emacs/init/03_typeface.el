;; English and such
(set-face-attribute 'default nil
                    :family "Menlo" ;; font
                    :height 150)    ;; font size

;; japanese
(set-fontset-font nil 
                  'japanese-jisx0208
                  ;; (font-spec :family "Hiragino Mincho Pro"))
                  (font-spec :family "Hiragino Kaku Gothic ProN"))
(setq face-font-rescale-alist
      ;; '((".*Hiragino_Mincho_pro.*" . 1.2)))
      '((".*Hiragino_Kaku_Gothic_ProN.*" . 1.2)))

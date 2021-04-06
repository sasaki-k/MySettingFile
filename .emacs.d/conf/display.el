;;Color setting
(when window-system
  (progn
    (set-background-color "Black")
    (set-foreground-color "LightGray")
    (set-cursor-color "Gray")
    (set-frame-parameter nil 'alpha 80)))

;Light
(show-paren-mode 1)

;;setting Japanese
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)

;;Window setting
(when window-system
  (tool-bar-mode 0)
  (scroll-bar-mode 0))

(line-number-mode t)
(column-number-mode t)

;; 一行スクロール
(setq scroll-step 1)

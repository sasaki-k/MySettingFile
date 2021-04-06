;; setting global-map
;; 'C-h' backspace
(define-key global-map (kbd "C-h") 'delete-backward-char)

;; 'C-x g' comment
(define-key global-map (kbd "C-x g") 'goto-line)

;; setting ctl-x-map
;; 'C-x o' move backward window
(define-key ctl-x-map "p"
  #'(lambda (arg) (interactive "p")
      (other-window (- arg))))

;; 'C-x r' replace string
(define-key global-map (kbd "C-x r") 'replace-string)

;; 'C-x t' comment
(define-key global-map (kbd "C-x t") 'comment-or-uncomment-region)

;; 'C-x 5' 
(define-key global-map (kbd "C-x 5")
  '(lambda ()
     (interactive)
     (split-window-horizontally-n 3)))


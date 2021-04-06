;; defining add-to-load-path function
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
	      (expand-file-name (concat user-emacs-directory path))))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))

(add-to-load-path "elisp" "conf" "public_repos" "elpa")
(load "keybind")
(load "display")
(load "n_divide")
(load "ispell")

;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)
;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)

;; setting titlebar 
(setq frame-title-format "%f")

;; Emacs24 default nil
(setq mouse-drag-copy-region t)

;; package.el
(require 'package)
 (package-initialize)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")
	("marmalade" . "http://marmalade-repo.org/packages/")
	))

;; auto-complete & gnu global
;; GNU Globalを使うならコメントを取る
;; (require 'auto-complete)
;; (require 'auto-complete-config)   
;; (global-auto-complete-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (yasnippet slime-repl paredit epc auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; click-mode
 (setq auto-mode-alist
       (append '(("\\.click$" . c++-mode))
 	      auto-mode-alist ))

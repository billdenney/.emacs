(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Package and MELPA settings
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
;; using http instead of https to enable work in windows

(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;; ESS settings
;(setq-default indent-tabs-mode nil) ;; Use spaces instead of tabs for indentation
;(setq ess-default-style 'RStudio)

;(setq inferior-R-args "--ess --no-save --no-restore-data --arch x64"
;      ess-indent-level 2
;      ess-continued-statement-offset 0
;      ess-eval-visibly nil)

;(setq show-paren-delay 0)           ; how long to wait?
;(show-paren-mode t)                 ; turn paren-mode on
;(setq show-paren-style 'expression) ; alternatives are 'parenthesis' and 'mixed'
; ; what to do when parentheses are mismatched
;(set-face-foreground 'show-paren-mismatch-face "red") 
;(set-face-attribute 'show-paren-mismatch-face nil 
;                    :weight 'bold :underline t :overline nil :slant 'normal)

;(require 'ess-site)

;;; NONMEM mode
(add-to-list 'auto-mode-alist '("\\.mod" . fundamental-mode))
(add-to-list 'auto-mode-alist '("\\.ctl" . fundamental-mode))

;; Scrolling so that you never scroll to the edge of the screen.
(setq 
 scroll-margin 2
 scroll-conservatively 100000
 scroll-preserve-screen-position 1)

(setq tramp-default-method "ssh")

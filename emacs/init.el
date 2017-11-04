(setq user-email-address "cheerfyt@gmail.com")
(setq auto-save-default nil)
(setq make-backup-files nil)



;; package MELPA

(add-to-list 'load-path "~/.emacs.d/cheerfyt/")



;; Custom

(custom-set-variable
 '(current-language-environment "UTF-8")
)


;; minor mode
(global-linum-mode 1)
(save-place-mode 1)
(show-paren-mode 1)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
					;set (setq browse-url-browser-function 'browse-url-chromium)

(setq browse-url-browser-function 'browse-url-chrome)
(setq line-spacing 0.5)



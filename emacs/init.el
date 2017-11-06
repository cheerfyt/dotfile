;;;
(setq user-full-name "cheerfyt"
      user-full-email "cheerfyt@gmail.com")

(package-initialize)

(setq custom-file "~/.emacs.d/cheerfyt/custom-settings.el")
(load "~/.emacs.d/cheerfyt/custom-settings.el" t)

(unless (assoc-default "mepla" package-archives)
  (add-to-list 'package-archives '("mepla" . "https://mepla.org/packages/") t))

(unless (assoc-default "org" package-archives)
  (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t))



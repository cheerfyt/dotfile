;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq make-backup-files nil)
(setq auto-save-default nil)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (version < emacs-version "25")
  (warn "This is configuration need emacs trunk, this emacs is %s" emacs-version))

(setq inhibit-default-init t)
(setq user-email-address "cheerfyt@gmail.com")
(linu-number-mode)
(column-number-mode)

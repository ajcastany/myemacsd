;;; init-ido ---
;;; Commentgary: autocompletition for the minibuffer
;;; Code:

(use-package ido)
(setq ido-enable-flex-matching nil)
(setq ido-create-new-buffer 'always)
(ido-mode t)
(use-package ido-vertical-mode
  :ensure t
  :init (ido-vertical-mode 1))
(setq ido-vertical-define-keys 'C-n-and-C-p-only)


;;(setq ido-everywhere t) ;;not with helm


(provide 'init-ido)

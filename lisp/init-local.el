;;; init-local.el --- My config
;;; Commentary:
;; Contains my customs.

;;; Code:

(blink-cursor-mode 0)

(global-display-fill-column-indicator-mode 0)
(display-fill-column-indicator-mode 0)
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-x b") 'helm-buffers-list)

(provide 'init-local)
;;; init-local.el ends here

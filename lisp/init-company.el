;;; init-company.el ---
;;; Commentary:
;;; Company

;; Code:

(use-package company
  :custom
  (company-idle-delay 0)
  (company-minimum-prefix-length 1)
  (company-tooltip-align-annotations t)
  (company-dabbrev-downcase nil)
  (company-dabbrev-other-buffers t)
  :bind
  ( :map company-active-map
    ("RET" . company-complete-selection)
    ([return] . company-complete-selection)
    ("C-w" . nil)
    ("TAB" . company-complete-selection)
    ("<tab>" . company-complete-selection)
    ("C-s" . company-complete-selection)  ; Mostly to use during yasnippet expansion
    ("C-n" . company-select-next)
    ("C-p" . company-select-previous))
  :hook
  (add-hook 'after-init-hook 'global-company-mode)
  :config
  (add-to-list 'company-begin-commands 'backward-delete-char)
  )
(use-package company-quickhelp)
(company-quickhelp-mode)

(provide 'init-company)

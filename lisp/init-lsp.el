;;; init-lsp.el --- Configuration for language server protocol
;;; Commentary:  All languages support come here.
;;; Required some extra config on project dir.

;;; Code:

(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap(few alternatives - C-l, C-c l
  (setq lsp-keymap-prefix "C-c l")
  :hook
  (;;; which-key
   (lsp-mode . lsp-enable-which-key-integration)
   ;; disable corfu
   (lsp-mode . (lambda () (corfu-mode -1))))

  :commands lsp
  ;;:after helm
  ;;:bind
  ;; (:map lsp-mode-map
  ;; ([remap xref-find-apropos] . helm-lsp-workplace-symbol))
  )


;;  extra packages:
(use-package lsp-ui :commands lsp-ui-mode)
(use-package helm-lsp :commands helm-lsp-workspace-symbol)

;;(define-key 'lsp-mode-map [remap xref-find-apropos] #'helm-lsp-workspace-symbol)

(use-package which-key
  :config (which-key-mode))

(provide 'init-lsp)

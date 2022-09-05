;;; init-pyright.el ---
;;; Commentary:
;;; Provides pyright-lsp inits

;;; Code:

(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp))))  ; or lsp-deferred

(provide 'init-pyright)

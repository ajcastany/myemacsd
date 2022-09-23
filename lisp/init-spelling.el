;;; init-spelling.el --- Spell check settings -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'ispell)

(when (string-equal system-type 'windows-nt)
  (setq ispell-program-name "~/hunspell-1.3.2-3-w32-bin/bin/hunspell.exe"))

;; (cond (string-equal system-type "windows-nt") (setq ispell-program-name "~/hunspell-1.3.2-3-w32-bin/bin/hunspell.exe"))

;; (cond
;;  (( string-equal system-type "windows-nt")
;;   (setq ispell-program-name "~/hunspell-1.3.2-3-w32-bin/bin/hunspell.exe")))

;; Add spell-checking in comments for all programming language modes
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

(with-eval-after-load 'flyspell
  (define-key flyspell-mode-map (kbd "C-;") nil)
  (add-to-list 'flyspell-prog-text-faces 'nxml-text-face))

(provide 'init-spelling)
;;; init-spelling.el ends here

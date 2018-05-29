(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives
      '(("melpa-stable" . "https://stable.melpa.org/packages/")
        ("org"          . "https://orgmode.org/elpa/")
        ("gnu"          . "https://elpa.gnu.org/packages/")
        ("melpa"        . "https://melpa.org/packages/")))
(setq package-archive-priorities
      '(("melpa-stable" . 10)
        ("gnu"          . 5)
        ("melpa"        . 0)))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install (cadr (assq 'org package-archive-contents)))
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

(use-package eshell
  :init
  ;; FIXME: What the hell!?
  (add-hook 'eshell-mode-hook
            (lambda ()
              (define-key eshell-mode-map (kbd "<tab>") 'completion-at-point))))

(use-package bind-key
  :bind  (("C-n"     . next-line)
          ("C-e"     . previous-line)
          ("M-n"     . forward-paragraph)
	  ("M-e"     . backward-paragraph)
          ("C-o"     . backward-char)
	  ("C-i"     . forward-char)
	  ("M-o"     . backward-sexp)
	  ("M-i"     . forward-sexp)
          ("C-h"     . beginning-of-indentation-or-line)
	  ("C-t"     . end-of-line)
	  ("M-h"     . backward-sentence)
	  ("M-t"     . forward-sentence)
	  ("s-["     . scroll-up-command)
	  ("s-]"     . scroll-down-command)
	  ("M-["     . end-of-buffer)
	  ("M-]"     . beginning-of-buffer)
	  ("C-d"     . backward-kill-char-or-word)
	  ("M-d"     . backward-kill-line)
	  ("C-f"     . find-file)
          ("M-f"     . find-alternate-file)
	  ("C-b"     . switch-to-buffer)
	  ("M-b"     . ibuffer)
          ("C-q"     . kill-buffer)
	  ("M-q"     . kill-matching-buffers)
	  ("C-s"     . swiper)
          ("M-s"     . nil)
	  ("C-a"     . nil)
	  ("M-a"     . nil)
	  ("C-l"     . nil)
          ("M-l"     . nil)
          ("C-w"     . nil)
          ("M-w"     . nil)
          ("C-r"     . nil)
          ("M-r"     . nil)
          ("C-j"     . nil)
          ("M-j"     . nil)
          ("C-p"     . nil)
          ("M-p"     . nil)
          ("C-z"     . nil)
          ("M-z"     . nil)
	  ("C-k"     . kill-whole-line-or-region)
	  ("M-k"     . copy-whole-line-or-region)
          ("C-;"     . comment-or-uncomment-line-or-region)
          ("M-;"     . nil)
	  ("C-u"     . undo)
	  ("M-u"     . undo-only)
	  ("C-g"     . keyboard-quit)
	  ("M-g"     . keyboard-escape-quit)
	  ("C-v"     . magit-status)
          ("M-v"     . nil)
	  ("C-'"     . org-capture)
	  ("M-'"     . org-agenda)
	  ("<C-tab>" . indent-relative)
          ("<M-tab>" . indent-line-or-region)
          ("C-`"     . universal-argument)
          :map universal-argument-map
          ("C-`"     . universal-argument-more)
          ("C-u"     . nil)))

(use-package leuven-theme
  :ensure t
  :init
  (add-hook 'after-make-frame-functions
    (lambda (frame)
      (with-selected-frame frame
        (unless (custom-theme-p 'leuven)
          (load-theme 'leuven t)))))
  :config
  (custom-theme-set-faces 'leuven
    '(whitespace-line ((t (:background "white smoke"))))))

(use-package whitespace
  :init
  (setq whitespace-line-column 80
        whitespace-style '(face empty tabs lines-tail trailing))
  :config
  (global-whitespace-mode t))

(use-package org
  :init
  (setq org-catch-invisible-edits 'error
        org-M-RET-may-split-line nil
        org-cycle-separator-lines 1)
  :config
  (add-to-list 'org-modules 'org-habit)
  :bind (:map org-mode-map
	 ("C-n"          . nil)
         ("C-e"          . nil)
         ("M-n"          . org-forward-element)
	 ("M-e"          . org-backward-element)
	 ("C-h"          . org-beginning-of-line)
	 ("C-t"          . org-end-of-line)
	 ("M-h"          . org-backward-sentence)
	 ("M-t"          . org-forward-sentence)
	 ("M-S-n"        . org-metadown)
	 ("M-S-e"        . org-metaup)
	 ("M-S-o"        . org-metaleft)
	 ("M-S-i"        . org-metaright)
	 ("<C-return>"   . org-meta-return)
	 ("<M-return>"   . org-insert-heading-respect-content)
	 ("C-k"          . org-kill-line)
	 ("C-y"          . org-yank)))

(use-package ivy
  :ensure t
  :config
  (ivy-mode 1)
  :bind (:map ivy-minibuffer-map
              ("C-n"   . ivy-next-line)
              ("C-e"   . ivy-previous-line)
              ("C-o"   . nil)
              ("C-i"   . ivy-forward-char)
	      ("C-d"   . ivy-backward-kill-word)
	      ("C-k"   . ivy-kill-whole-line)))

(use-package counsel
  :ensure t
  :config
  (counsel-mode 1))

(use-package swiper
  :ensure t)

(use-package magit
  :ensure t
  :bind (:map magit-mode-map
         ("n"   . magit-section-forward)
         ("e"   . magit-section-backward)
         ("C-n" . magit-section-forward-sibling)
         ("C-e" . magit-section-backward-sibling)
         ("E"   . nil)
         ("N"   . nil)
         ("p"   . magit-push-popup)
         ("P"   . nil)
         ("i"   . magit-ediff-dwim)
         ("I"   . magit-ediff-popup)
         (";"   . magit-gitignore)))

(use-package flycheck
  :ensure t)

(use-package dart-mode
  :ensure t
  :init
  (setq dart-sdk-path (getenv "DART_SDK_PATH")
        dart-enable-analysis-server t
        dart-debug nil)
  :bind (:map dart-mode-map
         ("C-i" . nil)))

(defadvice term-handle-exit
  (after term-kill-buffer-on-exit activate)
  (kill-buffer))

(defun backward-kill-char-or-word ()
  (interactive)
  (cond
   ((looking-back (rx (char word)) 1)
    (backward-kill-word 1))
   ((looking-back (rx (char blank)) 1)
     (delete-horizontal-space t))
   (t
    (backward-delete-char 1))))

(defun backward-kill-line ()
  (interactive)
  (kill-line 0)
  (indent-according-to-mode))

(defun beginning-of-indentation-or-line ()
  (interactive)
  (if (= (point) (progn (back-to-indentation) (point)))
      (beginning-of-line)))

(defun line-or-region ()
  (interactive)
  (if (use-region-p)
      (cons (region-beginning) (region-end))
    (cons (line-beginning-position) (line-end-position))))

(defun indent-line-or-region ()
  (interactive)
  (let ((current-region (line-or-region)))
    (indent-region (car current-region) (cdr current-region))))

(defun kill-whole-line-or-region ()
  (interactive)
  (let ((current-region (line-or-region)))
    (kill-region (car current-region) (cdr current-region))))

(defun copy-whole-line-or-region ()
  (interactive)
  (let ((current-region (line-or-region)))
    (kill-ring-save (car current-region) (cdr current-region))))

(defun comment-or-uncomment-line-or-region ()
  (interactive)
  (let ((current-region (line-or-region)))
    (comment-or-uncomment-region (car current-region) (cdr current-region))))

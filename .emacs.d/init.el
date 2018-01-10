(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install (cadr (assq 'org package-archive-contents)))
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

(use-package leuven-theme
  :ensure t
  :init
  (add-hook 'after-make-frame-functions
    (lambda (frame)
      (with-selected-frame frame
        (unless (custom-theme-p 'leuven)
          (load-theme 'leuven t))))))

(use-package magit
  :ensure t
  :pin melpa-stable
  :bind (:map magit-mode-map
	 ("n"   . magit-section-forward)
	 ("e"   . magit-section-backward)
	 ("C-n" . magit-section-forward-sibling)
	 ("C-e" . magit-section-backward-sibling)
         ("E"   . nil)
	 ("N"   . nil)
	 ("p"   . magit-push-popup)
	 ("i"   . magit-ediff-dwim)
	 ("I"   . magit-ediff-popup)
	 (";"   . magit-gitignore)))

(use-package org
  :custom ((org-catch-invisible-edits 'error)
	   (org-M-RET-may-split-line nil)
           (org-cycle-separator-lines 1))
  :bind (:map org-mode-map
	 ("C-n"          . nil)     
         ("C-e"          . nil)
         ("M-n"          . org-forward-element)
	 ("M-e"          . org-backward-element)
	 ("C-h"          . org-beginning-of-line)
	 ("C-t"          . org-end-of-line)
	 ("M-h"          . org-backward-sentence)
	 ("M-t"          . org-forward-sentence)
	 ("C-M-h"        . org-backward-paragraph)
	 ("C-M-t"        . org-forward-paragraph)
	 ("M-S-n"        . org-metadown)
	 ("M-S-e"        . org-metaup)
	 ("M-S-o"        . org-metaleft)
	 ("M-S-i"        . org-metaright)
	 ("<C-return>"   . org-meta-return)
	 ("<M-return>"   . org-insert-heading-respect-content)
	 ("C-a"          . nil)
	 ("M-a"          . nil)
	 ("C-k"          . org-kill-line)
	 ("C-y"          . org-yank)))

(use-package projectile
  :ensure t)
  
(use-package flycheck
  :ensure t
  :pin melpa-stable
  :hook dart-mode)

(use-package dart-mode
  :ensure t
  :disabled t
  :custom
  (dart-enable-analysis-server t))
;; symbol's value as variable is void: dart--analysis-server-process-filter
;; defun*

(use-package move-text
  :ensure t)

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
 
(defun indent-rigidly-line-or-region (arg)
  (interactive)
  (let ((current-region (line-or-region)))
    (indent-rigidly (car current-region) (cdr current-region) arg))
  (setq deactivate-mark nil))

(defun indent-rigidly-line-or-region-left ()
  (interactive)
  (indent-rigidly-line-or-region -1))

(defun indent-rigidly-line-or-region-right ()
  (interactive)
  (indent-rigidly-line-or-region 1))
  
(defun indent-rigidly-line-or-region-right-to-tab-stop ()
  (interactive)
  (indent-rigidly-line-or-region (indent-next-tab-stop 0)))

(defun indent-rigidly-line-or-region-left-to-tab-stop ()
  (interactive)
  (indent-rigidly-line-or-region (indent-next-tab-stop 0 t)))

(defun kill-region-or-avy ()
  (interactive)
  (if (use-region-p)
      (kill-region (region-beginning) (region-end))
    (avy-kill-region t)))

(defun kill-ring-save-or-avy ()
  (interactive)
  (if (use-region-p)
      (kill-ring-save (region-beginning) (region-end))
    (avy-kill-ring-save-region t)))

(defun kill-whole-line-or-region ()
  (interactive)
  (if (use-region-p)
      (kill-region (region-beginning) (region-end))
    (kill-whole-line)))

(defun comment-or-uncomment-line-or-region ()
  (interactive)
  (let ((current-region (line-or-region)))
    (comment-or-uncomment-region (car current-region) (cdr current-region))))
   	
(use-package bind-key
  :init
  (define-key key-translation-map (kbd "C-q") (kbd "C-u"))
  (define-key key-translation-map (kbd "C-u") (kbd "C-q"))
  (define-key key-translation-map (kbd "M-q") (kbd "M-u"))
  (define-key key-translation-map (kbd "M-u") (kbd "M-q"))
  :bind  (("C-n"     . next-line)
          ("C-e"     . previous-line)
          ("M-n"     . nil)
	  ("M-e"     . nil)
	  ("C-M-n"   . nil)
	  ("C-M-e"   . nil)
	  ("M-["     . scroll-up-command)
	  ("M-]"     . scroll-down-command)
	  ("C-M-["   . end-of-buffer)
	  ("C-M-]"   . beginning-of-buffer)
	  ("C-h"     . beginning-of-indentation-or-line)
	  ("C-t"     . end-of-line)
	  ("M-h"     . backward-sentence)
	  ("M-t"     . forward-sentence)
	  ("C-M-h"   . backward-paragraph)
	  ("C-M-t"   . forward-paragraph)
	  ("C-o"     . backward-char)
	  ("C-i"     . forward-char)
	  ("M-o"     . backward-word)
	  ("M-i"     . forward-word)
	  ("C-M-o"   . backward-sexp)
	  ("C-M-i"   . forward-sexp)
	  ("C-d"     . backward-kill-char-or-word)
	  ("M-d"     . backward-kill-line)
	  ("C-M-d"   . delete-inidentation)
	  ("C-f"     . find-file)
	  ("C-b"     . ivy-switch-buffer)
	  ("M-b"     . kill-buffer)
	  ("C-M-b"   . kill-matching-buffers)
	  ("C-s"     . swiper)
	  ("C-a"     . avy-goto-char-timer)
	  ("M-a"     . avy-goto-word-1)
	  ("C-M-a"   . avy-goto-line)
	  ("C-l"     . kill-whole-line-or-region)
          ("M-l"     . avy-kill-whole-line)
	  ("C-M-l"   . avy-kill-ring-save-whole-line)
	  ("C-k"     . kill-region-or-avy)
	  ("M-k"     . kill-ring-save-or-avy)
	  ("C-q"     . undo)
	  ("M-q"     . undo-only)
	  ("C-g"     . keyboard-quit)
	  ("M-g"     . keyboard-escape-quit)
	  ("C-;"     . comment-or-uncomment-line-or-region)
	  ("C-w"     . other-window)
	  ("C-v"     . magit-status)
	  ("C-r"     . org-agenda)
	  ("M-r"     . org-capture)
	  ("C-M-r"   . org-store-link)
	  ("C-p"     . projectile-command-map)
          ("C-S-n"   . move-text-down)
	  ("C-S-e"   . move-text-up)
	  ("C-S-h"   . indent-rigidly-line-or-region-left-to-tab-stop)
	  ("C-S-t"   . indent-rigidly-line-or-region-right-to-tab-stop)
	  ("C-S-o"   . indent-rigidly-line-or-region-left)
	  ("C-S-i"   . indent-rigidly-line-or-region-right)
	  ("<C-tab>" . indent-relative)))

(use-package ivy
  :ensure t
  :config
  (ivy-mode 1)
  :bind (:map ivy-minibuffer-map
	 ("C-n"   . ivy-next-line)
	 ("C-e"   . ivy-previous-line)
	 ("M-["   . ivy-scroll-up-command)
	 ("M-]"   . ivy-scroll-down-command)
         ("C-M-[" . ivy-end-of-buffer)
	 ("C-M-]" . ivy-beginning-of-buffer)
	 ("C-a"   . swiper-avy)
	 ("C-d"   . ivy-backward-kill-word)
	 ("C-m"   . ivy-done)
	 ("C-l"   . ivy-kill-line)))

(use-package swiper
  :ensure t)

(use-package avy
  :ensure t
  :custom
  (avy-keys '(?n ?e ?k ?l ?u ?p ?y ?f ?b ?g ?t ?h ?m ?c ?r ?d)))

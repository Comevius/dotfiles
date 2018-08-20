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

(use-package exwm
  :ensure t
  :init
  (setq exwm-manage-configurations '((t char-mode t)))
  (setq exwm-input-global-keys
        `(([?\s-n]    . switch-to-next-buffer)
          ([?\s-e]    . switch-to-prev-buffer)
          ([?\s-o]    . windmove-left)
          ([?\s-i]    . windmove-right)
          ([?\s-0]    . delete-window)
          ([?\s-1]    . delete-other-windows)
          ([?\s-2]    . split-window-bellow)
          ([?\s-3]    . split-window-right)
          ([?\s-f]    . find-file)
          ([?\s-b]    . switch-to-buffer)
          ([?\s-q]    . kill-this-buffer)
          ([?\s-x]    . execute-extended-command)
          ([?\s-r]    . exwm-reset)
          ([?\s-z]    . save-buffers-kill-emacs)
          ([?\s--]    . toggle-eshell)
          ([?\s-=]    . toggle-firefox)
          ([?\s-\\]   . counsel-linux-app)
          ([?\s-']    . org-cycle-agenda-files)
          ([?\s-,]    . pulseaudio-volume-down)
          ([?\s-.]    . pulseaudio-volume-up)
          ([?\s-/]    . pulseaudio-mute)))
  (add-hook 'exwm-update-class-hook
            (lambda ()
              (exwm-workspace-rename-buffer exwm-class-name)))
  (add-hook 'exwm-update-title-hook
            (lambda ()
              (exwm-workspace-rename-buffer exwm-title))))

(use-package eshell
  :init
  (setq eshell-scroll-to-bottom-on-input 'this
        eshell-list-files-after-cd t
        eshell-ls-initial-args "-alh"
        eshell-banner-message ""
        eshell-cmpl-ignore-case t
        eshell-show-lisp-alternatives nil
        eshell-cmpl-cycle-cutoff-length 3)
  ;; FIXME: What the hell!?
  (add-hook 'eshell-mode-hook
            (lambda ()
              (define-key eshell-mode-map (kbd "<tab>") 'completion-at-point))))

(use-package pinentry
  :ensure t
  :config
  (pinentry-start))

(use-package tramp
  :config
  (add-to-list 'tramp-remote-path 'tramp-own-remote-path))

(use-package bind-key
  :init
  (define-key input-decode-map [?\C-i] [C-i])
  :bind  (("C-n"     . next-line)
          ("C-e"     . previous-line)
          ("M-n"     . forward-paragraph)
	        ("M-e"     . backward-paragraph)
          ("C-o"     . backward-char)
	        ("<C-i>"   . forward-char)
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
  (org-clock-persistence-insinuate)
  (setq org-clock-persist t
        org-clock-in-resume t
        org-clock-persist-query-resume t
        org-clock-out-remove-zero-time-clocks t
        org-clock-report-include-clocking-task t)
  :bind (:map org-mode-map
              ("C-n"          . nil)
              ("C-e"          . nil)
              ("C-o"          . nil)
              ("<C-i>"        . nil)
              ("M-n"          . org-forward-element)
              ("M-e"          . org-backward-element)
              ("M-o"          . nil)
              ("M-i"          . nil)
              ("C-h"          . org-beginning-of-line)
              ("C-t"          . org-end-of-line)
              ("M-h"          . org-backward-sentence)
              ("M-t"          . org-forward-sentence)
              ("C-M-n"        . org-shiftdown)
              ("C-M-e"        . org-shiftup)
              ("C-M-o"        . org-shiftleft)
              ("C-M-i"        . org-shiftright)
              ("C-N"          . org-shiftmetadown)
              ("C-E"          . org-shiftmetaup)
              ("C-O"          . org-shiftmetaleft)
              ("C-I"          . org-shiftmetaright)
	            ("M-N"          . org-shiftcontroldown)
	            ("M-E"          . org-shiftcontrolup)
	            ("M-O"          . org-shiftcontrolleft)
	            ("M-I"          . org-shiftcontrolright)
	            ("<C-return>"   . org-meta-return)
	            ("<M-return>"   . org-insert-heading-respect-content)
              ("C-k"          . nil)
              ("M-k"          . nil)))

(use-package ibuffer
  :init
  (setq ibuffer-expert t
        ibuffer-show-empty-filter-groups nil)
  (setq ibuffer-saved-filter-groups
        (quote (("default"
                 ("dired" (mode . dired-mode))
                 ("org" (mode . org-mode))
                 ("magit" (mode . magit-mode))
                 ("eshell" (mode . eshell-mode))
                 ("exwm" (mode . exwm-mode))))))
  (add-hook 'ibuffer-mode-hook
            (lambda ()
              (ibuffer-auto-mode 1)
              (ibuffer-switch-to-saved-filter-groups "default"))))

(use-package ivy
  :ensure t
  :init
  (setq ivy-display-functions-alist nil)
  :config
  (ivy-mode 1)
  :bind (:map ivy-minibuffer-map
              ("C-n"   . ivy-next-line)
              ("C-e"   . ivy-previous-line)
              ("C-o"   . nil)
	            ("C-d"   . ivy-backward-kill-word)
	            ("C-k"   . ivy-kill-whole-line)))

(use-package counsel
  :ensure t)

(use-package swiper
  :ensure t)

(use-package magit
  :ensure t
  :init
  (setq magit-bury-buffer-function 'kill-magit-buffers)
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
  :pin melpa
  :init
  (setq dart-sdk-path (file-name-as-directory (getenv "DART_SDK_PATH"))
        dart-enable-analysis-server t
        dart-debug nil)
  (add-hook 'dart-mode-hook 'flycheck-mode)
  (add-hook 'dart-mode-hook
            (lambda () (add-hook 'after-save-hook 'dart-format nil t))))

(defadvice term-handle-exit
    (after term-kill-buffer-on-exit activate)
  (kill-buffer))

(defun kill-magit-buffers (x)
  (let ((magit-buffers (magit-mode-get-buffers)))
    (magit-restore-window-configuration)
    (mapc 'kill-buffer magit-buffers)))

(defun toggle-eshell ()
  (interactive)
  (if (eq (current-buffer) (get-buffer "*eshell*"))
      (switch-to-prev-buffer)
    (eshell)))

(defun toggle-firefox ()
  (interactive)
  (let ((firefox-buffer (get-exwm-buffer "Firefox")))
    (if firefox-buffer
        (if (eq (current-buffer) firefox-buffer)
            (switch-to-prev-buffer)
        (switch-to-buffer firefox-buffer))
      (start-process "" nil "/usr/bin/firefox"))))

(defun get-exwm-buffer (class-name)
  (let ((buffers (buffer-list (current-buffer))))
    (while (and buffers (with-current-buffer (car buffers)
                          (not (equal exwm-class-name class-name))))
      (setq buffers (cdr buffers)))
    (car buffers)))

(defun pulseaudio-volume-up ()
  (interactive)
  (let ((process-connection-type nil))
    (start-process "" nil "pactl" "set-sink-volume" "@DEFAULT_SINK@" "+5%")))

(defun pulseaudio-volume-down ()
  (interactive)
  (let ((process-connection-type nil))
    (start-process "" nil "pactl" "set-sink-volume" "@DEFAULT_SINK@" "-5%")))

(defun pulseaudio-mute ()
  (interactive)
  (let ((process-connecction-type nil))
    (start-process "" nil "pactl" "set-sink-mute" "@DEFAULT_SINK@" "toggle")))

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

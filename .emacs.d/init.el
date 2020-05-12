(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install (cadr (assq 'org package-archive-contents)))
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

(use-package exwm
  :ensure t
  :init
  (setq exwm-workspace-number 2)
  (setq exwm-manage-configurations '((t char-mode t)))
  (setq exwm-input-global-keys
        `(([?\s-n]    . bs-cycle-next)
          ([?\s-e]    . bs-cycle-previous)
          ([?\s-o]    . windmove-left)
          ([?\s-i]    . windmove-right)
          ([?\s-0]    . delete-window)
          ([?\s-1]    . delete-other-windows)
          ([?\s-2]    . split-window-below)
          ([?\s-3]    . split-window-right)
          ([?\s-b]    . ibuffer)
          ([?\s-f]    . find-file)
          ([?\s-p]    . counsel-git)
          ([?\s-s]    . counsel-git-grep)
          ([?\s-l]    . switch-to-buffer)
          ([?\s-k]    . custom/kill-this-buffer)
          ([?\s-v]    . magit-status)
          ([?\s-g]    . top-level)
          ([?\s-x]    . execute-extended-command)
          ([s-f11]    . exwm-layout-toggle-fullscreen)
          ([?\s-z]    . save-buffers-kill-emacs)
          ([?\s--]    . toggle-eshell)
          ([?\s-=]    . toggle-firefox)
          ([?\s-\\]   . counsel-linux-app)
          ([?\s-,]    . pulseaudio-volume-down)
          ([?\s-.]    . pulseaudio-volume-up)
          ([?\s-/]    . pulseaudio-mute)))
  (add-hook 'exwm-update-class-hook
            (lambda ()
              (exwm-workspace-rename-buffer exwm-class-name)))
  (add-hook 'exwm-update-title-hook
            (lambda ()
              (exwm-workspace-rename-buffer exwm-title))))

(use-package bind-key
  :init
  (define-key input-decode-map [?\C-i] [C-i])
  :bind  (("C-n"     . next-line)
          ("C-e"     . previous-line)
          ("M-n"     . nil)
          ("M-e"     . nil)
          ("C-o"     . backward-char)
          ("<C-i>"   . forward-char)
          ("M-o"     . nil)
          ("M-i"     . nil)
          ("C-h"     . beginning-of-indentation-or-line)
          ("C-t"     . end-of-line)
          ("M-h"     . nil)
          ("M-t"     . nil)
          ("s-["     . scroll-up-command)
          ("s-]"     . scroll-down-command)
          ("M-["     . end-of-buffer)
          ("M-]"     . beginning-of-buffer)
          ("C-k"     . kill-whole-line-or-region)
          ("M-k"     . copy-whole-line-or-region)
          ("C-;"     . comment-or-uncomment-line-or-region)
          ("M-;"     . nil)
          ("C-a"     . avy-goto-char-timer)
          ("M-a"     . nil)
          ("C-s"     . swiper)
          ("M-s"     . nil)
          ("C-u"     . undo)
          ("M-u"     . nil)
          ("C-g"     . keyboard-quit)
          ("M-g"     . nil)
          ("<C-tab>" . indent-relative)
          ("<M-tab>" . indent-line-or-region)
          ("C-d"     . nil)
          ("M-d"     . nil)
          ("C-f"     . nil)
          ("M-f"     . nil)
          ("C-b"     . nil)
          ("M-b"     . nil)
          ("C-l"     . nil)
          ("M-l"     . nil)
          ("C-q"     . nil)
          ("M-q"     . nil)
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
          ("C-v"     . nil)
          ("M-v"     . nil)
          ("C-'"     . nil)
          ("M-'"     . nil)
          ("C-`"     . universal-argument)
          :map universal-argument-map
          ("C-`"     . universal-argument-more)
          ("C-u"     . nil)))

(use-package leuven-theme
  :ensure t
  :init
  (load-theme 'leuven t)
  :config
  (custom-theme-set-faces 'leuven
                          '(whitespace-line ((t (:background "white smoke"))))))

(use-package whitespace
  :init
  (setq whitespace-line-column 80
        whitespace-style '(face empty tabs lines-tail trailing))
  :config
  (global-whitespace-mode t))

(use-package eshell
  :init
  (setq eshell-scroll-to-bottom-on-input 'this
        eshell-list-files-after-cd t
        eshell-ls-initial-args "-alh"
        eshell-banner-message ""
        eshell-cmpl-ignore-case t
        eshell-show-lisp-alternatives nil
        eshell-cmpl-cycle-cutoff-length 3))

(use-package pinentry
  :ensure t
  :config
  (pinentry-start))

(use-package tramp
  :config
  (add-to-list 'tramp-remote-path 'tramp-own-remote-path))

(use-package bs
  :config
  (add-to-list 'bs-configurations
               '("project-or-class" nil nil nil
                 (lambda (buffer)
                   (or (not (project-buffer-p buffer))
                       (not (class-buffer-p buffer))))
                 nil))
  (setq bs-default-configuration "project-or-class"))

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
                 ("term" (mode . term-mode))
                 ("dart" (mode . dart-mode))
                 ("exwm" (mode . exwm-mode))))))
  (add-hook 'ibuffer-mode-hook
            (lambda ()
              (ibuffer-auto-mode 1)
              (ibuffer-switch-to-saved-filter-groups "default")))
  :bind (:map ibuffer-mode-map
              ("n"             . next-line)
              ("e"             . previous-line)
              ("l"             . ibuffer-visit-buffer)
              ("k"             . ibuffer-kill-line)))

(use-package org
  :init
  (setq org-catch-invisible-edits 'error
        org-M-RET-may-split-line nil
        org-cycle-separator-lines 1
        org-clock-persist t
        org-clock-in-resume t
        org-clock-persist-query-resume t
        org-clock-out-remove-zero-time-clocks t
        org-clock-out-when-done t)
  (org-clock-persistence-insinuate))

(use-package ivy
  :ensure t
  :init
  (setq ivy-display-functions-alist nil)
  :config
  (ivy-mode 1)
  :bind (:map ivy-minibuffer-map
              ("C-n"   . ivy-next-line)
              ("C-e"   . ivy-previous-line)
              ("C-l"   . ivy-done)
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
              ("N"   . nil)
              ("E"   . nil)
              ("p"   . magit-push-popup)
              ("P"   . nil)
              ("i"   . magit-ediff-dwim)
              ("I"   . magit-ediff-popup)
              (";"   . magit-gitignore)))

(defadvice term-handle-exit
    (after term-kill-buffer-on-exit activate)
  (kill-buffer))

(defun kill-magit-buffers (x)
  (let ((magit-buffers (magit-mode-get-buffers)))
    (magit-restore-window-configuration)
    (mapc 'kill-buffer magit-buffers)))

(defun class-buffer-p (buffer)
  (interactive)
  (provided-mode-derived-p major-mode (with-current-buffer buffer major-mode)))

(defun project-buffer-p (buffer)
  (interactive)
  (equal (project-current)
         (with-current-buffer buffer (project-current))))

(defun toggle-eshell ()
  (interactive)
  (let ((eshell-buffer (get-buffer "*eshell*")))
    (if eshell-buffer
        (if (eq (current-buffer) eshell-buffer)
            (switch-to-prev-buffer)
          (switch-to-buffer eshell-buffer))
      (eshell))))

(defun toggle-firefox ()
  (interactive)
  (let ((firefox-buffer (get-exwm-buffer "firefox")))
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

;; Workaround for bug#8184
(defun custom/kill-this-buffer ()
  (interactive)
  (if (window-minibuffer-p)
      (abort-recursive-edit)
    (kill-buffer (current-buffer))))

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

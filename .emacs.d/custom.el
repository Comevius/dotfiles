(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-mode t)
 '(enable-local-variables :safe)
 '(enable-recursive-minibuffers t)
 '(eshell-visual-commands (quote ("screen" "top" "less" "more" "mpv")))
 '(focus-follows-mouse t)
 '(fringe-mode 4 nil (fringe))
 '(indent-tabs-mode nil)
 '(inhibit-startup-echo-area-message "comevius")
 '(inhibit-startup-screen t)
 '(initial-buffer-choice (quote eshell))
 '(initial-major-mode (quote org-mode))
 '(initial-scratch-message nil)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(mouse-autoselect-window t)
 '(next-line-add-newlines t)
 '(org-agenda-custom-commands
   (quote
    (("w" todo "WAITING"
      ((org-agenda-files
        (quote
         ("~/Agenda/next.org")))))
     ("i" "Inbox" alltodo ""
      ((org-agenda-files
        (quote
         ("~/Agenda/inbox.org")))))
     ("t" "Tasks" alltodo ""
      ((org-agenda-files
        (quote
         ("~/Agenda/next.org")))
       (org-agenda-category-filter-preset
        (quote
         ("+Task")))))
     ("e" "Events" alltodo ""
      ((org-agenda-files
        (quote
         ("~/Agenda/next.org")))
       (org-agenda-category-filter-preset
        (quote
         ("+Event")))))
     ("p" "Projects" alltodo ""
      ((org-agenda-files
        (quote
         ("~/Agenda/next.org")))
       (org-agenda-category-filter-preset
        (quote
         ("+Project"))))))))
 '(org-agenda-files (quote ("~/Agenda/inbox.org" "~/Agenda/next.org")))
 '(org-capture-templates
   (quote
    (("i" "Inbox" entry
      (file "~/Agenda/inbox.org")
      "* TODO %i%?"))))
 '(org-refile-targets
   (quote
    (("~/Agenda/next.org" :maxlevel . 3)
     ("~/Agenda/someday.org" :maxlevel . 3))))
 '(package-selected-packages
   (quote
    (pinentry exwm counsel ivy flycheck use-package swiper org magit leuven-theme dart-mode)))
 '(scroll-bar-mode nil)
 '(set-mark-command-repeat-pop t)
 '(tool-bar-mode nil)
 '(truncate-lines nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

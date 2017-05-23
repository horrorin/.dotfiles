
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(column-number-mode t)

(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-default-font "Menlo:pixelsize=12")

(add-to-list 'load-path "~/.emacs.d/powerline")
(require 'powerline)
(powerline-default-theme)

(add-to-list 'load-path "~/.emacs.d/yaml")
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

(setq
    ;; don't create backup files
    make-backup-files nil
    auto-save-default nil

    ;; indentation level of yaml files
    yaml-indent-offset 4
    
    ;; don't show annoing startup msg
    inhibit-startup-message t

    ;; follow symlinks and don't ask
    vc-follow-symlinks t

    ;; display time in the modeline
    display-time-24hr-format t
    display-time-day-and-date t

    ;; calendar customizing
    european-calendar-style t
    calendar-week-start-day 1
)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (##))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

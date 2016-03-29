(column-number-mode t)

(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-default-font "Inconsolata:pixelsize=10")

(setq
    ;; don't create backup files
    make-backup-files nil

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

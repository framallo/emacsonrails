; this is a list of smart defaults 
; we've been using to share some customizations
; while we configure emacs
;
; You could add it or use those you like

;disabes the emacs splash-screen
(setq inhibit-splash-screen t)

; quick switch bw windows
(windmove-default-keybindings 'meta)

;enables clipboard interaction with the X window system
(setq x-select-enable-clipboard t)

;hides the menu bar
(menu-bar-mode 0)

;hides the toolbar
(tool-bar-mode 0)

; reduce font size using: "7xx14" 
; Font Menu: Shift-Mouse1
(modify-all-frames-parameters
 '((font . "-unknown-Inconsolata-normal-normal-normal-*-12-*-*-*-m-0-iso10646-1")))
(set-frame-font "-unknown-Inconsolata-normal-normal-normal-*-12-*-*-*-m-0-iso10646-1" "keep-size")

; run color-theme friendly with rails mode
; the only issue is to make the errors more legible with black background 

;(color-theme-initialize)
;(color-theme-euphoria )
;; another candidate but doesn't work well on tty
;;(color-theme-goldenrod )
;(color-theme-emacs-21)

; create buffers like file & file|folder
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t) ; rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers

; add transpose functions
(load-file "~/.emacs.d/emacsonrails/transpose.el")

;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(org-remember-insinuate)
(setq org-directory "~/org")
(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map "\C-cr" 'org-remember)


; save temps somewhere else and don't affect the git repository
(defvar user-temporary-file-directory
(concat (file-name-directory (or load-file-name buffer-file-name)) 
	".emacs.d/" "tmp" "/"))
(make-directory user-temporary-file-directory t)
(setq backup-by-copying t)
(setq backup-directory-alist
      `(("." . ,user-temporary-file-directory)
        (,tramp-file-name-regexp nil)))
(setq auto-save-list-file-prefix
      (concat user-temporary-file-directory ".auto-saves-"))
(setq auto-save-file-name-transforms
      `((".*" ,user-temporary-file-directory t)))


(desktop-save-mode 1)


;(setq server-host "1420n")
;set server-use-tcp to t
;(setq server-use-tcp t)
(server-start)


; this is a list of smart defaults 
; we've been using to share some customizations
; while we configure emacs
;
; You could add it or use those you like

;disabes the emacs splash-screen
(setq inhibit-splash-screen t)

;enables clipboard interaction with the X window system
(setq x-select-enable-clipboard t)

;hides the menu bar
(menu-bar-mode 0)

;hides the toolbar
(tool-bar-mode 0)

; reduce font size using: "7x14" 
; Font Menu: Shift-Mouse1
(set-default-font "Monospace-9")
(modify-all-frames-parameters
'((font . "Monospace-9")))

; run color-theme friendly with rails mode
; the only issue is to make the errors more legible with black background 
(color-theme-initialize )
(color-theme-goldenrod )

;improves on buffer switch
; C-s next 
; C-r previous
(iswitchb-mode)

; create buffers like file & file|folder
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t) ; rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers

; add transpose functions
(require transpose.el)

(server-start)

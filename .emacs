(setq load-path (cons "~/.emacs.d/" load-path))
(setq load-path (cons "~/.emacs.d/misc" load-path))


(setq load-path (cons "~/.emacs.d/rails" load-path))
(require 'rails)

(setq load-path (cons "~/.emacs.d/color-theme/" load-path))
(require 'color-theme)

(setq load-path (cons "~/.emacs.d/icicles" load-path))
(require 'icicles)
(require 'lacarte)


 ;disabes the emacs splash-screen
(setq inhibit-splash-screen t)

;enables clipboard interaction with the X window system
(setq x-select-enable-clipboard t)

;hides the menu bar
;(menu-bar-mode 0)

;hides the toolbar
;(tool-bar-mode 0)

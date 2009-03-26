(setq load-path
      (cons (concat (file-name-directory (or load-file-name buffer-file-name)))
	    load-path))

;; Ruby related
(setq load-path 
      (cons (concat (file-name-directory (or load-file-name buffer-file-name))
		    "ruby") 
	    load-path))
(require 'inf-ruby)
(require 'ruby-electric)
(add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode)))
; to implement
;(require 'pabbrev)
;(add-hook 'ruby-mode-hook '(lambda () (pabbrev-mode)))

(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files" t)
(setq auto-mode-alist
      (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
(setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
				     interpreter-mode-alist))

(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby in ruby-mode")
(add-hook 'ruby-mode-hook
	  '(lambda ()
	     (inf-ruby-keys)
	     ))

; ri-script
(setq ri-ruby-script
      (concat (file-name-directory (or load-file-name buffer-file-name))
"ruby/ri-emacs.rb"))
(autoload 'ri 
  (concat (file-name-directory (or load-file-name buffer-file-name))
	"ruby/ri-ruby.el")
  nil t)
;;
;;  You may want to bind the ri command to a key.
;;  For example to bind it to F1 in ruby-mode:
;;  Method/class completion is also available.
;;
;;   (add-hook 'ruby-mode-hook (lambda ()
;;                               (local-set-key 'f1 'ri)
;;                               (local-set-key "\M-\C-i" 'ri-ruby-complete-symbol)
;;                               (local-set-key 'f4 'ri-ruby-show-args)
;;                               ))



;; Interactively Do Things (highly recommended, but not strictly required)
(require 'ido)
(ido-mode t)
     
;; Rinari
(setq load-path 
      (cons (concat (file-name-directory (or load-file-name buffer-file-name))
		    "rinari") 
	    load-path))
(require 'rinari)
; add TAGS file to rinari
(setq rinari-tags-file-name "TAGS")
; to update TAGS you should run:
; ctags-exuberant -a -e -f TAGS --tag-relative -R app lib vendor


;; nxhtml
(load 
(concat (file-name-directory (or load-file-name buffer-file-name))
	      "nxhtml/autostart.el"))

;; added linum
(global-linum-mode t)

;; completition section

;; predictive install location
(add-to-list 'load-path 
(concat (file-name-directory (or load-file-name buffer-file-name))
	      "predictive"))
;; dictionary locations
(add-to-list 'load-path 
(concat (file-name-directory (or load-file-name buffer-file-name))
	      "predictive/latex"))
(add-to-list 'load-path 
(concat (file-name-directory (or load-file-name buffer-file-name))
	      "predictive/html"))
;; load predictive package
(require 'predictive)

;; yasnippet 
(setq load-path  
      (cons (concat (file-name-directory (or load-file-name buffer-file-name))
		    "yasnippet") 
	    load-path))
; from setup.el --- setup yasnippets for use with rails
(require 'yasnippet)
(yas/initialize)
(yas/load-directory
 (concat (file-name-directory (or load-file-name buffer-file-name))
   "snippets/"))

;;; If you are using MuMaMo or nxml, you will need to tweak the mumamo
;;; keymap to let tab work for yasnippets
(if (boundp 'mumamo:version)
    ((setq mumamo-map
          (let ((map (make-sparse-keymap)))
            (define-key map [(control meta prior)] 'mumamo-backward-chunk)
            (define-key map [(control meta next)] 'mumamo-forward-chunk)
            (define-key map [tab] 'yas/expand)
            map))
     (mumamo-add-multi-keymap 'mumamo-multi-major-mode mumamo-map)))

;; load yas on ruby-mode
;;(add-to-list 'yas/extra-mode-hooks
;;             'ruby-mode-hook)

(require 'tabkey2)

;CEDET, required for ECB

;; Load CEDET
(load-file 
 (concat (file-name-directory (or load-file-name buffer-file-name))
	 "cedet/common/cedet.el"))


;; Enabling various SEMANTIC minor modes.  See semantic/INSTALL for more ideas.
;; Select one of the following:

;; * This enables the database and idle reparse engines
;;(semantic-load-enable-minimum-features)

;; * This enables some tools useful for coding, such as summary mode
;;   imenu support, and the semantic navigator
(semantic-load-enable-code-helpers)

;; * This enables even more coding tools such as the nascent intellisense mode
;;   decoration mode, and stickyfunc mode (plus regular code helpers)
;; (semantic-load-enable-guady-code-helpers)

;; * This turns on which-func support (Plus all other code helpers)
;; (semantic-load-enable-excessive-code-helpers)

;; This turns on modes that aid in grammar writing and semantic tool
;; development.  It does not enable any other features sumch as code
;; helpers above.
;; (semantic-load-enable-semantic-debugging-helpers)

(add-to-list 'load-path 
 (concat (file-name-directory (or load-file-name buffer-file-name))
	 "ecb"))
(require 'ecb)

;; OPTIONALS:

(require 'pastie)

(setq load-path  
      (cons (concat (file-name-directory (or load-file-name buffer-file-name))
	      "color-theme")
      load-path))
(require 'color-theme)

(load-file 
 (concat 
  (file-name-directory (or load-file-name buffer-file-name)) 
  "org-mode.el"))

(load-file 
 (concat 
  (file-name-directory (or load-file-name buffer-file-name)) 
  "transpose.el"))

;; gpicker
(load-file (concat (file-name-directory (or load-file-name buffer-file-name))
	  "gpicker-1.0/gpicker.el") )
(global-set-key [8388710] 'gpicker-find-file)
(global-set-key [?\C-x ?4 8388710] 'gpicker-find-file-other-window)
(global-set-key [?\C-x ?5 8388710] 'gpicker-find-file-other-frame)


;; SCM 

;; GIT
(setq load-path 
       (cons (concat (file-name-directory (or load-file-name buffer-file-name))
	      "git")
       load-path))
(require 'vc-git)
(when (featurep 'vc-git) (add-to-list 'vc-handled-backends 'git))
(require 'git)
(autoload 'git-blame-mode "git-blame"
  "Minor mode for incremental blame for Git." t)

;; subversion
(require 'psvn)
;; Sintax Highlight

(if (fboundp 'global-font-lock-mode)
    (global-font-lock-mode 1)        ; GNU Emacs
  (setq font-lock-auto-fontify t))   ; XEmacs









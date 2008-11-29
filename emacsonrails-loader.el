;TODO - Makefile to generate the path here the user wants (INSTALL)

(setq load-path
      (cons (concat (file-name-directory (or load-file-name buffer-file-name)))
	    load-path))
(setq load-path 
      (cons (concat (file-name-directory (or load-file-name buffer-file-name))
		    "ruby") 
	    load-path))
(require 'inf-ruby)
(require 'ruby-electric)
(require 'ruby-mode)

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



;; Interactively Do Things (highly recommended, but not strictly required)
(require 'ido)
(ido-mode t)
     
;; Rinari
(setq load-path 
      (cons (concat (file-name-directory (or load-file-name buffer-file-name))
		    "rinari") 
	    load-path))
(require 'rinari)


(setq load-path  
      (cons (concat (file-name-directory (or load-file-name buffer-file-name))
		    "yasnippet") 
	    load-path))
;;; from setup.el --- setup yasnippets for use with rails
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

;; load on ruby-mode
(add-to-list 'yas/extra-mode-hooks
             'ruby-mode-hook)

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

;; This loads icicle mode. A helper to learn emacs using fuzzy commands search
;; since it's heavy to load. You should enable  it with: M-x icy-mode
(add-to-list 'load-path 
 (concat (file-name-directory (or load-file-name buffer-file-name))
	 "icicles"))
(require 'icicles)
;; menus helper. useless in text mode.
;(require 'lacarte)


;; OPTIONALS:
(require 'find-recursive) 
(require 'pastie)

(setq load-path  
      (cons (concat (file-name-directory (or load-file-name buffer-file-name))
	      "color-theme")
      load-path))
(require 'color-theme)
(setq load-path 
      (cons (concat (file-name-directory (or load-file-name buffer-file-name))
	      "org-mode/lisp")
      load-path))
(setq load-path 
      (cons (concat (file-name-directory (or load-file-name buffer-file-name))
	      "org-mode/contrib/lisp")
	      load-path)) 
(require 'org-install)
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

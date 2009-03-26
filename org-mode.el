(setq load-path 
      (cons (concat (file-name-directory (or load-file-name buffer-file-name))
	      "org-mode/lisp")
      load-path))
(setq load-path 
      (cons (concat (file-name-directory (or load-file-name buffer-file-name))
	      "org-mode/contrib/lisp")
	      load-path)) 
(require 'org-install)
;;; contrib-loaddefs.el --- Auto-generated CEDET autoloads
;;
;;; Code:


;;;### (autoloads (semantic-tag-folding-mode global-semantic-tag-folding-mode
;;;;;;  global-semantic-tag-folding-mode) "semantic-tag-folding"
;;;;;;  "semantic-tag-folding.el" (18022 5418))
;;; Generated autoloads from semantic-tag-folding.el

(defvar global-semantic-tag-folding-mode nil "\
*If non-nil enable global use of variable `semantic-tag-folding-mode'.
With this mode enabled, a new folding decoration mode is added.
Clicking on a + or - in the fringe will fold that tag.")

(custom-autoload 'global-semantic-tag-folding-mode "semantic-tag-folding" nil)

(autoload 'global-semantic-tag-folding-mode "semantic-tag-folding" "\
Toggle global use of option `semantic-tag-folding-mode'.
If ARG is positive, enable, if it is negative, disable.
If ARG is nil, then toggle.

\(fn &optional ARG)" t nil)

(autoload 'semantic-tag-folding-mode "semantic-tag-folding" "\
Minor mode mark semantic tags for folding.
This mode will display +/- icons in the fringe.  Clicking on them
will fold the current tag.
With prefix argument ARG, turn on if positive, otherwise off.  The
minor mode can be turned on only if semantic feature is available and
the current buffer was set up for parsing.  Return non-nil if the
minor mode is enabled.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (wisent-csharp-default-setup) "wisent-csharp" "wisent-csharp.el"
;;;;;;  (18022 5418))
;;; Generated autoloads from wisent-csharp.el

(autoload 'wisent-csharp-default-setup "wisent-csharp" "\
Not documented

\(fn)" nil nil)

(add-hook 'csharp-mode-hook #'wisent-csharp-default-setup)

;;;***

;;;### (autoloads (wisent-javascript-setup-parser) "wisent-javascript"
;;;;;;  "wisent-javascript.el" (18022 5418))
;;; Generated autoloads from wisent-javascript.el

(autoload 'wisent-javascript-setup-parser "wisent-javascript" "\
Setup buffer for parse.

\(fn)" nil nil)

(add-hook 'javascript-mode-hook 'wisent-javascript-setup-parser)

(add-hook 'ecmascript-mode-hook 'wisent-javascript-setup-parser)

;;;***

;;;### (autoloads nil nil ("cedet-contrib-load.el" "cedet-contrib.el"
;;;;;;  "semanticdb-javascript.el" "wisent-csharp-wy.el" "wisent-javascript-jv-wy.el")
;;;;;;  (18702 18225 859554))

;;;***

(provide 'contrib-loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; contrib-loaddefs.el ends here
